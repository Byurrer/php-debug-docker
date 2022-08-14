FROM php:7.4-cli

COPY config/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY config/php.ini /usr/local/etc/php/conf.d/php.ini

RUN apt update \
    && pecl install xdebug && docker-php-ext-enable xdebug \
    && mkdir /var/www/html/logs && chown www-data:www-data /var/www/html/logs

WORKDIR /var/www/html/
