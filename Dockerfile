FROM php:8-apache

RUN a2enmod ssl && a2enmod rewrite && mkdir -p /etc/apache2/ssl && mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

COPY ./ssl/*.pem /etc/apache2/ssl/
COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80
EXPOSE 443
