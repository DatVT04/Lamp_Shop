import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import DAO.FooterDAO;
import entity.Footer;

@WebFilter(urlPatterns = {"/*"})
public class FooterFilter implements Filter {

    private FooterDAO dao;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        dao = new FooterDAO();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {

        ServletContext context = request.getServletContext();
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        String requestURI = httpRequest.getRequestURI();

        // Làm mới dữ liệu sau các thao tác quản lý footer
        if (requestURI.contains("/admin/footer-settings") || httpRequest.getParameter("refreshFooter") != null) {
            context.removeAttribute("companyInfo");
            context.removeAttribute("contactInfo");
            context.removeAttribute("socialLinks");
            context.removeAttribute("shopLat");
            context.removeAttribute("shopLon");
        }

        // Tải lại dữ liệu nếu chưa có
        if (context.getAttribute("companyInfo") == null) {
            context.setAttribute("companyInfo", dao.getCompanyInfo());
            context.setAttribute("contactInfo", dao.getContactInfo());
            context.setAttribute("socialLinks", dao.getSocialLinks());

            // Lấy địa chỉ và chuyển thành tọa độ
            String address = dao.getContactInfo().stream()
                .filter(f -> f.getFieldName().equals("Địa chỉ"))
                .map(Footer::getValue)
                .findFirst()
                .orElse("");
            try {
                String encodedAddress = URLEncoder.encode(address, StandardCharsets.UTF_8.toString());
                context.setAttribute("shopAddressEncoded", encodedAddress);
                
                // Keep lat/lon attributes to avoid breaking other potential usages, default to 0
                if (context.getAttribute("shopLat") == null) {
                    context.setAttribute("shopLat", "0");
                    context.setAttribute("shopLon", "0");
                }
            } catch (Exception e) {
                context.setAttribute("shopAddressEncoded", "");
                System.out.println("Error encoding address: " + e.getMessage());
            }
        }

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        // Cleanup if needed
    }
}