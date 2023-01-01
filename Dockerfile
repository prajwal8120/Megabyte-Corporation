FROM tomcat:8
COPY target/*.war /usr/local/tomcat/webapps/add.war
#CMD ["catalina.sh","run"]
#EXPOSE 8080