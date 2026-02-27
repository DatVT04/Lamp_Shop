package Context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
    public Connection connection;

    public DBContext() {
        try {
            // Đọc cấu hình DB từ biến môi trường (phù hợp cho Render)
            String host = System.getenv().getOrDefault("DB_HOST", "localhost");
            String port = System.getenv().getOrDefault("DB_PORT", "1433");
            String dbName = System.getenv().getOrDefault("DB_NAME", "lamp_shop");
            String username = System.getenv().getOrDefault("DB_USER", "sa");
            String password = System.getenv().getOrDefault("DB_PASSWORD", "123");

            String url = String.format(
                    "jdbc:sqlserver://%s:%s;databaseName=%s;encrypt=true;trustServerCertificate=true",
                    host, port, dbName
            );

            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            throw new RuntimeException("Cannot initialize database connection", ex);
        }
    }
}
