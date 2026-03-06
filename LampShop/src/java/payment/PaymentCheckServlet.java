package payment;

import DAO.CartDAO;
import DAO.OrderDAO;
import entity.Cart;
import entity.CartItem;
import entity.Order;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "PaymentCheckServlet", urlPatterns = {"/paymentcheck"})
public class PaymentCheckServlet extends HttpServlet {

    private OrderDAO orderDAO = new OrderDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            int orderId = Integer.parseInt(request.getParameter("order_id"));
            Order order = orderDAO.getOrderById(orderId);
            
            if (order == null) {
                sendJsonError(out, "Order not found");
                return;
            }
            
            // Kiểm tra trạng thái order
            String orderStatus = order.getStatus();
            
            if ("completed".equals(orderStatus) || "paid".equals(orderStatus) || "processing".equals(orderStatus)) {
                out.print("{\"status\": \"success\", \"message\": \"Payment completed\"}");
            } else if ("cancelled".equals(orderStatus) || "failed".equals(orderStatus)) {
                out.print("{\"status\": \"failed\", \"message\": \"Order cancelled or failed\"}");
            } else {
                out.print("{\"status\": \"pending\", \"message\": \"Payment pending\"}");
            }
            
        } catch (NumberFormatException e) {
            sendJsonError(out, "Invalid order ID");
        } catch (Exception e) {
            System.out.println("Error checking payment: " + e.getMessage());
            e.printStackTrace();
            sendJsonError(out, e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        try {
            int orderId = Integer.parseInt(request.getParameter("order_id"));
            String manualVerify = request.getParameter("manual_verify");
            
            Order order = orderDAO.getOrderById(orderId);
            
            if (order == null) {
                sendJsonError(out, "Order not found");
                return;
            }
            
            // Nếu là xác nhận thủ công
            if ("true".equals(manualVerify)) {
                HttpSession session = request.getSession();
                Order sessionOrder = (Order) session.getAttribute("pending_order");

                int updatedBy = (sessionOrder != null && sessionOrder.getUserId() > 0) ? sessionOrder.getUserId() : 0;
                boolean updated = orderDAO.updateOrderStatus(orderId, "processing", updatedBy);
                orderDAO.updatePaymentStatus(orderId, "completed");

                if (updated) {
                    // Xóa giỏ hàng và chuyển pending_order → completed_order
                    if (sessionOrder != null) {
                        CartDAO cartDAO = new CartDAO();
                        if (sessionOrder.getUserId() > 0) {
                            for (CartItem item : sessionOrder.getItems()) {
                                cartDAO.deleteCartItem(request, response, item.getId(), sessionOrder.getUserId());
                            }
                        } else {
                            Cart emptyCart = new Cart();
                            emptyCart.setItems(new ArrayList<>());
                            cartDAO.saveCartToCookies(response, emptyCart);
                        }
                        sessionOrder.setPaymentStatus("completed");
                        session.setAttribute("completed_order", sessionOrder);
                        session.removeAttribute("pending_order");
                    }
                    out.print("{\"status\": \"success\", \"message\": \"Manual verification accepted\"}");
                } else {
                    out.print("{\"status\": \"error\", \"message\": \"Failed to update order status\"}");
                }
            } else {
                // Check trạng thái từ database
                String orderStatus = order.getStatus();
                
                if ("completed".equals(orderStatus) || "paid".equals(orderStatus)) {
                    out.print("{\"status\": \"success\", \"message\": \"Payment completed\"}");
                } else if ("cancelled".equals(orderStatus)) {
                    out.print("{\"status\": \"failed\", \"message\": \"Order cancelled\"}");
                } else {
                    out.print("{\"status\": \"pending\", \"message\": \"Payment pending\"}");
                }
            }
            
        } catch (NumberFormatException e) {
            sendJsonError(out, "Invalid order ID");
        } catch (Exception e) {
            System.out.println("Error in payment check: " + e.getMessage());
            e.printStackTrace();
            sendJsonError(out, e.getMessage());
        }
    }

    /**
     * Gửi lỗi response JSON
     */
    private void sendJsonError(PrintWriter out, String errorMessage) {
        out.print("{\"status\": \"error\", \"message\": \"" + escapeJson(errorMessage) + "\"}");
    }

    /**
     * Escape special characters trong JSON string
     */
    private String escapeJson(String str) {
        if (str == null) return "";
        return str.replace("\\", "\\\\")
                 .replace("\"", "\\\"")
                 .replace("\n", "\\n")
                 .replace("\r", "\\r")
                 .replace("\t", "\\t");
    }
}

