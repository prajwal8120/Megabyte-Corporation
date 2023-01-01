FROM tomcat:latest
COPY target/*.war /usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]
EXPOSE 8080