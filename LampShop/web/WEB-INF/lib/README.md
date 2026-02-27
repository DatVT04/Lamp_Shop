Các thư viện `.jar` cần thiết cho project được tham chiếu trong `nbproject/project.properties` và cần được đặt trong thư mục `web/WEB-INF/lib/` với đúng tên file sau:

- commons-collections4-4.4.jar
- commons-compress-1.21.jar
- commons-io-2.11.0.jar
- commons-logging-1.3.4.jar
- fluent-hc-4.5.14.jar
- gson-2.11.0.jar
- httpclient-4.5.14.jar
- httpcore-4.4.16.jar
- itextpdf-5.5.13.2.jar
- jakarta.activation-2.0.1.jar
- jakarta.mail-2.0.1.jar
- jakarta.mail-api-2.0.1.jar
- jakarta.servlet.jsp.jstl-2.0.0.jar
- jakarta.servlet.jsp.jstl-api-2.0.0.jar
- jakarta.websocket-api-2.1.0.jar
- jakarta.websocket-client-api-2.1.0.jar
- jaxb-api-2.1.jar
- log4j-api-2.17.1.jar
- log4j-core-2.17.1.jar
- poi-3.15.jar
- poi-ooxml-3.16.jar
- poi-ooxml-schemas-3.16.jar
- sqljdbc42.jar
- xmlbeans-2.3.0.jar

Bạn có thể tải các thư viện này từ Maven Central (hoặc nguồn chính thức tương ứng), ví dụ theo toạ độ Maven (tham khảo, có thể dùng bản gần nhất tương đương):

- `org.apache.commons:commons-collections4:4.4`
- `org.apache.commons:commons-compress:1.21`
- `commons-io:commons-io:2.11.0`
- `commons-logging:commons-logging:1.3.4`
- `org.apache.httpcomponents:httpclient:4.5.14`
- `org.apache.httpcomponents:httpcore:4.4.16`
- `org.apache.httpcomponents:fluent-hc:4.5.14`
- `com.google.code.gson:gson:2.11.0`
- `com.itextpdf:itextpdf:5.5.13.2`
- `jakarta.activation:jakarta.activation-api:2.0.1` (hoặc bản tương đương với tên file `jakarta.activation-2.0.1.jar`)
- `com.sun.mail:jakarta.mail:2.0.1`
- `jakarta.mail:jakarta.mail-api:2.0.1`
- `jakarta.websocket:jakarta.websocket-api:2.1.0`
- `jakarta.websocket:jakarta.websocket-client-api:2.1.0`
- `javax.xml.bind:jaxb-api:2.1`
- `org.apache.logging.log4j:log4j-api:2.17.1`
- `org.apache.logging.log4j:log4j-core:2.17.1`
- `org.apache.poi:poi:3.15`
- `org.apache.poi:poi-ooxml:3.16`
- `org.apache.poi:poi-ooxml-schemas:3.16`
- `org.apache.xmlbeans:xmlbeans:2.3.0`
- Driver SQL Server: `com.microsoft.sqlserver:mssql-jdbc` (chọn bản phù hợp JDK 17, ví dụ `mssql-jdbc-12.x` và đổi tên thành `sqljdbc42.jar` nếu cần giữ nguyên tên).

Sau khi tải xong, đặt toàn bộ các file `.jar` trên vào thư mục `LampShop/web/WEB-INF/lib/`, sau đó chạy lại build (Ant hoặc Docker) để tạo file WAR.

