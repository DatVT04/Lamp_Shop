FROM tomcat:10.1-jdk17-temurin AS build

WORKDIR /app

# Copy Java web project sources
COPY LampShop/ /app/

# Cài đặt Ant để build dự án NetBeans (Ant-based)
RUN apt-get update && \
    apt-get install -y ant && \
    rm -rf /var/lib/apt/lists/*

# Build file WAR: dist/LampShop.war
#
# NetBeans Ant build yêu cầu classpath của Java EE server.
# Trong container này đã có Tomcat ở /usr/local/tomcat nên dùng luôn lib/* để compile.
RUN ant -f build.xml -Dj2ee.platform.classpath=/usr/local/tomcat/lib/* dist

#
# Runtime stage: Tomcat
#
FROM tomcat:10.1-jdk17-temurin

WORKDIR /usr/local/tomcat

# Xoá các webapp mặc định
RUN rm -rf webapps/*

# Copy file WAR đã build và deploy làm ROOT
COPY --from=build /app/dist/LampShop.war webapps/ROOT.war

EXPOSE 8080

# Lệnh chạy Tomcat
CMD ["catalina.sh", "run"]
