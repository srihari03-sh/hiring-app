FROM tomcat:9.0-jdk17-temurin

ADD http://100.48.212.149:8081/repository/hiring-app/com/example/hiring-app/1.0/hiring-app-1.0.war /usr/local/tomcat/webapps/hiring.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
