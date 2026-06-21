FROM tomcat:9.0

COPY Portal/ROOT.war /usr/local/tomcat/webapps/ROOT.war
COPY Login/LoginApp.war /usr/local/tomcat/webapps/login.war
COPY calculator/CalculatorApp.war /usr/local/tomcat/webapps/calculator.war

CMD ["catalina.sh", "run"]