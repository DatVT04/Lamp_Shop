// Simple AI chatbot service for Mộc Đăng using Node.js + Express.
// - Reads product data from Azure SQL (same DB as Java app)
// - Calls OpenAI API to generate natural Vietnamese responses
//
// ENV cần cấu hình trên Render (service Node riêng):
// - PORT: cổng Express (Render sẽ set tự động, nhưng ta vẫn fallback 4000)
// - OPENAI_API_KEY: khóa OpenAI của bạn
// - DB_HOST, DB_PORT, DB_NAME, DB_USER, DB_PASSWORD: giống Java app

import 'dotenv/config';
import express from 'express';
import cors from 'cors';
import sql from 'mssql';
import OpenAI from 'openai';

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

// ----- OpenAI client -----
const openai = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY,
});

// Lấy một ít dữ liệu sản phẩm liên quan để làm context cho AI
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
      FROM products p
      LEFT JOIN categories c ON p.category_id = c.id
      WHERE p.title LIKE @kw OR c.name LIKE @kw
      ORDER BY p.id
    `);
    return result.recordset || [];
  } catch (err) {
    console.error('[Chatbot][DB] Lỗi truy vấn sản phẩm:', err);
    return [];
  }
}

// API chính: POST /chat { message, userId? }
app.post('/chat', async (req, res) => {
  const { message, userId } = req.body || {};

  if (!message || typeof message !== 'string') {
    return res.status(400).json({ error: 'Thiếu câu hỏi (message).' });
  }

  if (!process.env.OPENAI_API_KEY) {
    return res
      .status(500)
      .json({ error: 'Chưa cấu hình OPENAI_API_KEY cho chatbot.' });
  }

  try {
    const products = await getRelatedProducts(message);

    const productsContext =
      products.length === 0
        ? 'Không tìm thấy sản phẩm nào trong DB khớp với câu hỏi.'
        : products
            .map(
              (p) =>
                `- [${p.id}] ${p.title} (danh mục: ${p.category_name || 'N/A'}, giá: ${p.sale_price} VND)\n  Mô tả: ${p.description?.replace(
                  /\s+/g,
                  ' ',
                )}`,
            )
            .join('\n');

    const systemPrompt = `
Bạn là trợ lý AI của cửa hàng đèn Mộc Đăng (bán đèn giấy dó, đèn tranh vẽ, đèn vải Linen...).
Bạn trả lời NGẮN GỌN, thân thiện, bằng tiếng Việt, dựa trên dữ liệu mình cung cấp.
Nếu câu hỏi không liên quan đến đèn, sản phẩm, đơn hàng, thanh toán, vận chuyển, bảo hành
hoặc thông tin trên website mocdang.com, hãy nói nhẹ nhàng rằng bạn chỉ hỗ trợ câu hỏi về cửa hàng.

Nếu có danh sách sản phẩm bên dưới, hãy ưu tiên dùng thông tin đó để tư vấn.
Không bịa ra sản phẩm hay giá không có trong danh sách.
`;

    const userPrompt = `
Câu hỏi của khách:
${message}

Thông tin sản phẩm liên quan (từ database):
${productsContext}

userId (nếu có): ${userId || 'không có / chưa đăng nhập'}
`;

    const completion = await openai.chat.completions.create({
      model: 'gpt-4.1-mini',
      messages: [
        { role: 'system', content: systemPrompt },
        { role: 'user', content: userPrompt },
      ],
      temperature: 0.4,
    });

    const answer = completion.choices[0]?.message?.content?.trim();

    return res.json({
      answer: answer || 'Xin lỗi, hiện tại mình chưa trả lời được câu hỏi này.',
      products,
    });
  } catch (err) {
    console.error('[Chatbot] Lỗi khi gọi OpenAI:', err);
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

