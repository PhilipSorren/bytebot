# Extend the pre-built bytebot-desktop image
FROM ghcr.io/bytebot-ai/bytebot-desktop:edge

# Fix sharp for old CPU
RUN cd /bytebot/bytebotd && npm rebuild sharp

# Add additional packages, applications, or customizations here

# Expose the bytebotd service port
EXPOSE 9990

# Start the bytebotd service
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf", "-n"]

