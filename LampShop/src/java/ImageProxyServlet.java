import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * Proxies external image requests to bypass CORS for client-side processing.
 */
@WebServlet("/imageProxy")
public class ImageProxyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String url = req.getParameter("url");

        if (url == null || url.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing url parameter");
            return;
        }
        if (!url.startsWith("http://") && !url.startsWith("https://")) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid url");
            return;
        }

        HttpURLConnection conn = null;
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setConnectTimeout(8000);
            conn.setReadTimeout(15000);
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (compatible)");
            conn.setRequestProperty("Accept", "image/*");
            conn.connect();

            int status = conn.getResponseCode();
            if (status != HttpURLConnection.HTTP_OK) {
                resp.sendError(status, "Remote server returned " + status);
                return;
            }

            String ct = conn.getContentType();
            if (ct != null && ct.startsWith("image/")) {
                resp.setContentType(ct.split(";")[0].trim());
            } else {
                resp.setContentType("image/jpeg");
            }

            // CORS headers so JS can read the response
            resp.setHeader("Access-Control-Allow-Origin", "*");
            resp.setHeader("Cache-Control", "public, max-age=3600");

            try (InputStream is = conn.getInputStream();
                 OutputStream os = resp.getOutputStream()) {
                byte[] buf = new byte[8192];
                int n;
                while ((n = is.read(buf)) != -1) {
                    os.write(buf, 0, n);
                }
            }

        } catch (Exception e) {
            if (!resp.isCommitted()) {
                resp.sendError(HttpServletResponse.SC_BAD_GATEWAY, "Failed to fetch image: " + e.getMessage());
            }
        } finally {
            if (conn != null) conn.disconnect();
        }
    }
}
