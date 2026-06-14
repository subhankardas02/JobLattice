# Use an official Apache Tomcat image configured with Java 21
FROM tomcat:10.1-jdk21-openjdk-slim

# Clean out the default Tomcat sample webapps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your local exported WAR file directly into Tomcat's ROOT directory
COPY ./joblattice.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Tomcat's default internal container port)
EXPOSE 8080

# Launch the Tomcat server
CMD ["catalina.sh", "run"]