# Use the official Splunk Enterprise image from Docker Hub
FROM splunk/splunk:latest

# Copy your Splunk application into the container
COPY . /opt/splunk/etc/apps/softmania_infra_monitoring

# Expose the Splunk web port .
EXPOSE 8000 8089 9997

# Start Splunk when the container launches
CMD ["/opt/splunk/bin/splunk", "start", "--accept-license", "--answer-yes", "--no-prompt"]
