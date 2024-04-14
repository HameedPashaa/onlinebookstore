FROM tomcat:latest

# Remove the default ROOT web application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your .war file into the webapps directory of Tomcat
COPY onlinebookstore.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (the default Tomcat port)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
