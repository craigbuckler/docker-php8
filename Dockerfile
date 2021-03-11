FROM php:8-apache

RUN a2enmod ssl
RUN a2enmod rewrite

RUN mkdir -p /etc/apache2/ssl
COPY ./ssl/*.pem /etc/apache2/ssl/
COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY ./php/php.ini /usr/local/etc/php/php.ini

EXPOSE 80
EXPOSE 443
