FROM php:8.2-fpm

# Install ekstensi MySQLi
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

WORKDIR /var/www/html
COPY app/ /var/www/html/
RUN chown -R www-data:www-data /var/www/html
