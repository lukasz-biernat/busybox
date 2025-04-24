FROM busybox:stable

# Set the working directory for web content
WORKDIR /var/www/html

# Copy your web content to the directory
COPY index.html /var/www/html

# Specify the command to run httpd in the background, serving files from the current directory
CMD ["httpd", "-f", "-h", "/var/www/html", "-p", "8080"]

EXPOSE 8080

