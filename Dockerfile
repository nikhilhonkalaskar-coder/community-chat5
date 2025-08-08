# Use an official Tomcat base image
FROM tomcat:9.0

# Set environment variables
ENV TZ=Asia/Kolkata

# Clean the default webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
COPY community-chat.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
