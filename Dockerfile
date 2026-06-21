FROM tomcat:9.0

COPY portal/ROOT.war /usr/local/tomcat/webapps/ROOT.war
COPY login/LoginApp.war /usr/local/tomcat/webapps/login.war
COPY calculator/CalculatorApp.war /usr/local/tomcat/webapps/calculator.war

CMD ["catalina.sh", "run"]