FROM php:8.0-apache
WORKDIR /var/www/html

COPY index.php /var/www/html/
COPY robots.txt /var/www/html/
RUN chown -R www-data:www-data /var/www/

USER www-data

EXPOSE 80
