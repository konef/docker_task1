FROM tomcat
COPY /resources/war/sample.war /opt/tomcat/webapps/sample.war
EXPOSE 8080
