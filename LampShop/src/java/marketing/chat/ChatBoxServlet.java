package marketing.chat;

import DAO.MessageDAO;
import entity.Message;
import entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author nguye
 */
@WebServlet("/marketing/chatbox")
public class ChatBoxServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        User acc = (User) request.getSession().getAttribute("acc");
        if (acc == null) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }
        if (!"marketing".equals(acc.getRole()) && !"admin".equals(acc.getRole())) {
            response.sendRedirect(request.getContextPath() + "/home");
            return;
        }
        int marketingId = acc.getId();

        String userIdStr = request.getParameter("userId");
        if (userIdStr == null) {
            response.sendRedirect(request.getContextPath() + "/marketing/chatlist");
            return;
        }

        int userId = Integer.parseInt(userIdStr);
        MessageDAO messageDAO = new MessageDAO();
        List<Message> messages = messageDAO.getMessagesBetweenUsers(marketingId, userId);
        messageDAO.markAsRead(marketingId, userId);

        // In log để kiểm tra
        System.out.println("ChatBoxServlet - marketingId: " + marketingId + ", userId: " + userId);

        request.setAttribute("marketingId", marketingId);
        request.setAttribute("userId", userId);
        request.setAttribute("messages", messages);
        request.getRequestDispatcher("/marketing/chat/chatBox.jsp").forward(request, response);
    }
}