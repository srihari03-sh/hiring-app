FROM tomcat:8.0.20

ADD http://100.48.212.149:8081/repository/hiring-app/com/example/hiring-app/1.0 /usr/local/tomcat/webapps/hiring.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
