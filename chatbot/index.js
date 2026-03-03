// Chatbot cho Mộc Đăng dùng Node.js + Express.
// - Đọc dữ liệu sản phẩm từ Azure SQL (giống DB Java app)
// - Trả lời rule-based bằng tiếng Việt dựa trên dữ liệu đó.
// - Nếu cấu hình GEMINI_API_KEY, sẽ gọi thêm Gemini để “đánh bóng” câu trả lời.
//
// ENV cần cấu hình trên Render (service Node riêng):
// - PORT: cổng Express (Render sẽ set tự động, nhưng ta vẫn fallback 4000)
// - DB_HOST, DB_PORT, DB_NAME, DB_USER, DB_PASSWORD: giống Java app
// - (tuỳ chọn) GEMINI_API_KEY: khóa Gemini lấy từ Google AI Studio

import 'dotenv/config';
import express from 'express';
import cors from 'cors';
import sql from 'mssql';

const app = express();
app.use(express.json());
app.use(
  cors({
    origin: '*', // đơn giản cho demo; có thể khóa lại thành https://mocdang.com
  }),
);

// ----- Kết nối Azure SQL -----
const dbConfig = {
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  server: process.env.DB_HOST,
  port: parseInt(process.env.DB_PORT || '1433', 10),
  database: process.env.DB_NAME,
  options: {
    encrypt: true,
    trustServerCertificate: true,
  },
  pool: {
    max: 5,
    min: 0,
    idleTimeoutMillis: 30000,
  },
};

let poolPromise;
const GEMINI_API_KEY = process.env.GEMINI_API_KEY || '';

async function getPool() {
  if (!poolPromise) {
    poolPromise = sql.connect(dbConfig).catch((err) => {
      console.error('[Chatbot][DB] Lỗi kết nối SQL:', err);
      poolPromise = undefined;
      throw err;
    });
  }
  return poolPromise;
}

// Lấy một ít dữ liệu sản phẩm liên quan để làm context trả lời
async function getRelatedProducts(question) {
  try {
    const pool = await getPool();
    const request = pool.request();
    // Tách từ khóa đơn giản (lấy 1–2 từ đầu tiên)
    const keyword = question.split(/\s+/)[0] || '';
    request.input('kw', sql.NVarChar, `%${keyword}%`);
    const result = await request.query(`
      SELECT TOP 5
          p.id,
          p.title,
          p.description,
          p.sale_price,
          c.name AS category_name
      FROM dbo.products p
      LEFT JOIN dbo.categories c ON p.category_id = c.id
      WHERE p.title LIKE @kw OR c.name LIKE @kw
      ORDER BY p.id
    `);
    return result.recordset || [];
  } catch (err) {
    console.error('[Chatbot][DB] Lỗi truy vấn sản phẩm:', err);
    return [];
  }
}

// Gọi Gemini (nếu có key) để “viết lại” câu trả lời cho tự nhiên hơn
async function enhanceAnswerWithGemini(question, products, baseAnswer) {
  if (!GEMINI_API_KEY) {
    return baseAnswer;
  }

  try {
    const productLines =
      products.length === 0
        ? 'Không tìm thấy sản phẩm nào từ database.'
        : products
            .map(
              (p) =>
                `- ${p.title} (danh mục: ${p.category_name || 'N/A'}, giá: ${p.sale_price} VND)`,
            )
            .join('\n');

    const prompt = `
Bạn là trợ lý chăm sóc khách hàng của cửa hàng đèn Mộc Đăng.
Hãy trả lời NGẮN GỌN, thân thiện, bằng tiếng Việt.

Câu hỏi của khách:
${question}

Thông tin sản phẩm trích từ database:
${productLines}

Câu trả lời gốc (thô) của hệ thống:
${baseAnswer}

Hãy viết lại câu trả lời ở trên sao cho tự nhiên, dễ hiểu, giữ nguyên thông tin số liệu quan trọng (giá, tên sản phẩm).
`;

    const resp = await fetch(
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-flash-latest:generateContent?key=' +
        encodeURIComponent(GEMINI_API_KEY),
      {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          contents: [
            {
              parts: [{ text: prompt }],
            },
          ],
        }),
      },
    );

    if (!resp.ok) {
      console.error('[Chatbot][Gemini] HTTP error', resp.status, await resp.text());
      return baseAnswer;
    }

    const data = await resp.json();
    const text =
      data.candidates?.[0]?.content?.parts?.[0]?.text ||
      data.candidates?.[0]?.output_text ||
      '';

    if (!text.trim()) {
      return baseAnswer;
    }
    return text.trim();
  } catch (err) {
    console.error('[Chatbot][Gemini] Lỗi khi gọi Gemini:', err);
    return baseAnswer;
  }
}

// API chính: POST /chat { message, userId? }
app.post('/chat', async (req, res) => {
  const { message, userId } = req.body || {};

  if (!message || typeof message !== 'string') {
    return res.status(400).json({ error: 'Thiếu câu hỏi (message).' });
  }

  try {
    const products = await getRelatedProducts(message);

    let answer;

    if (products.length === 0) {
      answer =
        'Hiện tại mình không tìm thấy sản phẩm nào trong cửa hàng khớp với câu hỏi này. Bạn có thể thử hỏi lại với tên đèn rõ hơn (ví dụ: "đèn vải Linen", "đèn phô mai giấy dó").';
    } else {
      const isAskPrice = /giá|bao nhiêu|tiền/i.test(message);
      const lines = products.map((p) => {
        const desc =
          (p.description || '').replace(/<[^>]*>/g, ' ').replace(/\s+/g, ' ').trim();
        const shortDesc = desc.length > 120 ? desc.slice(0, 117) + '...' : desc;
        if (isAskPrice) {
          return `• ${p.title}: khoảng ${p.sale_price} VND. (${p.category_name || 'Danh mục khác'})`;
        }
        return `• ${p.title} (${p.category_name || 'Danh mục khác'}), giá khoảng ${p.sale_price} VND. ${shortDesc}`;
      });

      if (isAskPrice) {
        answer =
          'Một vài sản phẩm phù hợp và giá tham khảo:\n' +
          lines.join('\n') +
          '\n\nGiá thực tế trên website có thể thay đổi theo khuyến mãi.';
      } else {
        answer =
          'Mình tìm thấy một số sản phẩm phù hợp trong cửa hàng:\n' +
          lines.join('\n') +
          '\n\nBạn có thể truy cập mục Cửa hàng trên mocdang.com để xem chi tiết từng mẫu.';
      }
    }

    const finalAnswer = await enhanceAnswerWithGemini(message, products, answer);

    return res.json({
      answer: finalAnswer || 'Xin lỗi, hiện tại mình chưa trả lời được câu hỏi này.',
      products,
    });
  } catch (err) {
    console.error('[Chatbot] Lỗi khi xử lý câu hỏi:', err);
    return res
      .status(500)
      .json({ error: 'Chatbot gặp lỗi trong khi xử lý. Vui lòng thử lại sau.' });
  }
});

app.get('/health', (req, res) => {
  res.json({ status: 'ok', service: 'mocdang-chatbot' });
});

const port = process.env.PORT || 4000;
app.listen(port, () => {
  console.log(`[Chatbot] Server running on port ${port}`);
});

