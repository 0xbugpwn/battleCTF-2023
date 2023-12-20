FROM php:7.2-apache


RUN set -ex \
        && apt-get update \
        && apt-get install -y --no-install-recommends unzip python3 netcat nano wget \
        && rm -rf /var/lib/apt/lists/*

ENV APACHE_DOCUMENT_ROOT /var/www/public

RUN set -ex \
    && cd /var/www \
    && rm -rf * \
    && curl -#SL https://github.com/top-think/think/archive/v5.0.23.tar.gz | tar zx --strip-components=1 \
    && sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf \
    && sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

COPY composer.json /var/www/

RUN set -ex \
    && cd /var/www \
    && curl -#sSL https://getcomposer.org/download/2.3.10/composer.phar -o composer.phar \
    && php composer.phar install \
    && php composer.phar require "topthink/think-captcha:^1.0" \
    && chown www-data:www-data -R .

WORKDIR /var/www/public

RUN rm -rf /var/www/application/index/controller/Index.php

COPY Index.php /var/www/application/index/controller/

RUN chmod +s /usr/bin/python3


COPY flag/root.txt /root/
COPY flag/flag001.txt /etc/
COPY flag/flag.txt /var/www/public/
RUN chown www-data:www-data /var/www/public/flag.txt
