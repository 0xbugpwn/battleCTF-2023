FROM php:8.0-apache
WORKDIR /var/www/html

COPY source/* /var/www/html/
RUN chown -R www-data:www-data /var/www/

EXPOSE 80
