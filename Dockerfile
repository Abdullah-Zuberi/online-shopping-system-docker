# We need php and apache for the server
FROM php:7.4-apache

# Need this extension to connect to mysql database
RUN docker-php-ext-install mysqli

# Go to the web folder
WORKDIR /var/www/html/

# Copy all our project files into the container
COPY . .

# Expose port 80 for web traffic
EXPOSE 80
