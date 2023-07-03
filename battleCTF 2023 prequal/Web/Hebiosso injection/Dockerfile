FROM php:8.0-apache
WORKDIR /var/www/html

COPY source/* /var/www/html/
RUN chown -R www-data:www-data /var/www/

RUN docker-php-ext-install mysqli
RUN docker-php-ext-enable mysqli

EXPOSE 80
