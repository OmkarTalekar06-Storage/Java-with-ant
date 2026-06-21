FROM tomcat:9.0

COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
COPY LoginApp.war /usr/local/tomcat/webapps/login.war

CMD ["catalina.sh", "run"]