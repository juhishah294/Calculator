# Use a base image with Tomcat installed
FROM tomcat:latest

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file into the webapps directory of Tomcat
COPY target/Calculator-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port if needed (Tomcat typically listens on port 8080)
EXPOSE 8080

# Command to start Tomcat
CMD ["catalina.sh", "run"]
