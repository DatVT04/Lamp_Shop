package payment;

import DAO.OrderDAO;
import entity.Order;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.Base64;

@WebServlet(name = "QRPaymentServlet", urlPatterns = {"/qrpayment"})
public class QRPaymentServlet extends HttpServlet {

    private OrderDAO orderDAO = new OrderDAO();
    
    // Thông tin tài khoản
    private static final String BANK_CODE = "MBBank";
    private static final String ACCOUNT_NUMBER = "0364113874";
    private static final String ACCOUNT_NAME = "VU TIEN DAT";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("pending_order");

        if (order == null) {
            response.sendRedirect("cartdetail");
            return;
        }

        // Tạo order trong DB nếu chưa được lưu (id == 0)
        if (order.getId() == 0) {
            order = orderDAO.createOrder(order);
            if (order == null) {
                response.sendRedirect("cartdetail");
                return;
            }
            session.setAttribute("pending_order", order);
        }

        // Lưu trạng thái thanh toán QR vào session
        session.setAttribute("payment_method", "qr");
        session.setAttribute("qr_start_time", System.currentTimeMillis());
        
        request.setAttribute("order", order);
        request.setAttribute("qr_timeout_seconds", 300); // 5 phút
        request.getRequestDispatcher("qrpayment.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        if ("generate_qr".equals(action)) {
            generateQRCode(request, response);
        } else if ("get_qr_image".equals(action)) {
            getQRImage(request, response);
        }
    }

    /**
     * Tạo VietQR string cho thanh toán
     */
    private String generateVietQRString(Order order) {
        // Format VietQR: https://vietqr.io/
        // Chuẩn NAPAS: 00020126360012VN.VIETQR.DK0364113874...
        
        long amount = (long) order.getTotal();
        String orderCode = order.getOrderCode().replaceAll("[^a-zA-Z0-9]", "");
        
        // Tạo VietQR URL
        String vietQRUrl = String.format(
            "https://vietqr.io/api/generate?accountNo=%s&accountName=%s&acqId=%s&amount=%d&addInfo=%s&template=compact",
            ACCOUNT_NUMBER,
            URLEncoder.encode(ACCOUNT_NAME, StandardCharsets.UTF_8),
            "970422", // Mã ngân hàng MB Bank
            amount,
            URLEncoder.encode("DH " + orderCode, StandardCharsets.UTF_8)
        );
        
        return vietQRUrl;
    }

    /**
     * Endpoint để lấy QR code image
     */
    private void getQRImage(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        
        try {
            HttpSession session = request.getSession();
            Order order = (Order) session.getAttribute("pending_order");
            
            if (order == null) {
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                return;
            }
            
            String qrUrl = generateVietQRString(order);
            
            // Gọi VietQR API để lấy QR code image
            java.net.URL url = new java.net.URL(qrUrl);
            java.net.HttpURLConnection conn = (java.net.HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(5000);
            
            if (conn.getResponseCode() == 200) {
                response.setContentType("image/png");
                response.setHeader("Cache-Control", "no-cache");
                
                try (InputStream input = conn.getInputStream();
                     OutputStream output = response.getOutputStream()) {
                    byte[] buffer = new byte[4096];
                    int bytesRead;
                    while ((bytesRead = input.read(buffer)) != -1) {
                        output.write(buffer, 0, bytesRead);
                    }
                }
            } else {
                response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            }
            
        } catch (Exception e) {
            System.out.println("Error generating QR: " + e.getMessage());
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }

    /**
     * Generate JSON response cho QR info
     */
    private void generateQRCode(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        
        try {
            HttpSession session = request.getSession();
            Order order = (Order) session.getAttribute("pending_order");
            
            if (order == null) {
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
                response.getWriter().write("{\"error\": \"Order not found\"}");
                return;
            }
            
            String orderCode = order.getOrderCode().replaceAll("[^a-zA-Z0-9]", "");
            long amount = (long) order.getTotal();
            
            // JSON response chứa thông tin QR
            String jsonResponse = String.format(
                "{\"bank_code\": \"%s\", \"account_number\": \"%s\", \"account_name\": \"%s\", " +
                "\"amount\": %d, \"description\": \"DH %s\", \"order_id\": %d, \"order_code\": \"%s\"}",
                BANK_CODE, ACCOUNT_NUMBER, ACCOUNT_NAME, amount, orderCode, order.getId(), order.getOrderCode()
            );
            
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(jsonResponse);
            
        } catch (Exception e) {
            System.out.println("Error generating QR code info: " + e.getMessage());
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            response.getWriter().write("{\"error\": \"" + e.getMessage() + "\"}");
        }
    }
}
