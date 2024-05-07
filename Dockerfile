# Use the official Splunk Enterprise image from Docker Hub
FROM splunk/splunk:latest

# Set environment variables
ENV SPLUNK_START_ARGS="--accept-license"
ENV SPLUNK_USER="admin"
ENV SPLUNK_PASSWORD="password"

# Expose Splunk ports
EXPOSE 8000 8088 8089

# Create volumes for persistent data
VOLUME ["/opt/splunk/etc", "/opt/splunk/var"]

# Start Splunk
CMD ["splunk", "start", "--accept-license"]
