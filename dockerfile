# Use an official PHP runtime as a base image
FROM php:7.4-apache

# Set the working directory to /var/www/html
WORKDIR /var/www/html

# Copy the current directory contents into the container at /var/www/html
COPY . .

# Replace the default index.php with a phpinfo page
RUN echo "<?php phpinfo(); ?>" > index.php

# Expose port 80 for web traffic
EXPOSE 80

# Start the Apache web server
CMD ["apache2-foreground"]

