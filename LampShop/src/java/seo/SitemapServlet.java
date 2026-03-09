package seo;

import DAO.PostDAO;
import DAO.ProductDAO;
import entity.Post;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SitemapServlet", urlPatterns = {"/sitemap.xml"})
public class SitemapServlet extends HttpServlet {

    private static String xmlEscape(String s) {
        if (s == null) return "";
        return s.replace("&", "&amp;")
                .replace("<", "&lt;")
                .replace(">", "&gt;")
                .replace("\"", "&quot;")
                .replace("'", "&apos;");
    }

    private static String baseUrl(HttpServletRequest request) {
        String configured = System.getenv("PUBLIC_BASE_URL");
        if (configured != null && !configured.isBlank()) {
            // đảm bảo không có "/" ở cuối
            return configured.endsWith("/") ? configured.substring(0, configured.length() - 1) : configured;
        }
        // fallback theo request hiện tại
        String scheme = request.getScheme();
        String host = request.getServerName();
        int port = request.getServerPort();
        boolean isDefaultPort = ("http".equalsIgnoreCase(scheme) && port == 80)
                || ("https".equalsIgnoreCase(scheme) && port == 443);
        return scheme + "://" + host + (isDefaultPort ? "" : (":" + port));
    }

    private static List<String> staticUrls(String base) {
        List<String> urls = new ArrayList<>();
        urls.add(base + "/");              // landing (ROOT)
        urls.add(base + "/home");          // trang chủ
        urls.add(base + "/listproduct");   // cửa hàng
        urls.add(base + "/posts");         // blog list
        return urls;
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/xml; charset=UTF-8");

        String base = baseUrl(request);
        String today = LocalDate.now().toString();

        List<Product> products = new ProductDAO().getActiveProductTitles();
        List<Post> posts = new PostDAO().getPublishedPostTitles();

        try (PrintWriter out = response.getWriter()) {
            out.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            out.println("<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">");

            for (String u : staticUrls(base)) {
                out.println("  <url>");
                out.println("    <loc>" + xmlEscape(u) + "</loc>");
                out.println("    <lastmod>" + today + "</lastmod>");
                out.println("    <changefreq>daily</changefreq>");
                out.println("    <priority>0.8</priority>");
                out.println("  </url>");
            }

            for (Product p : products) {
                String u = base + "/productdetail?id=" + p.getId();
                out.println("  <url>");
                out.println("    <loc>" + xmlEscape(u) + "</loc>");
                out.println("    <lastmod>" + today + "</lastmod>");
                out.println("    <changefreq>weekly</changefreq>");
                out.println("    <priority>0.7</priority>");
                out.println("  </url>");
            }

            for (Post p : posts) {
                String u = base + "/post?id=" + p.getId();
                out.println("  <url>");
                out.println("    <loc>" + xmlEscape(u) + "</loc>");
                out.println("    <lastmod>" + today + "</lastmod>");
                out.println("    <changefreq>weekly</changefreq>");
                out.println("    <priority>0.6</priority>");
                out.println("  </url>");
            }

            out.println("</urlset>");
        }
    }
}

