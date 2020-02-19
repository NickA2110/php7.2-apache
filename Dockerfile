FROM php:7.2-apache

RUN docker-php-source extract \
    && docker-php-ext-install mysqli sockets \
    && docker-php-source delete \
    && a2enmod rewrite
