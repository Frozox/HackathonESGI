FROM php:8.0.13-apache-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends locales apt-utils git libicu-dev g++ libpng-dev libxml2-dev libzip-dev libonig-dev libxslt-dev;

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    echo "fr_FR.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen

RUN docker-php-ext-configure intl
RUN docker-php-ext-install pdo pdo_mysql gd opcache intl zip calendar dom mbstring zip gd xsl
RUN mkdir var/cache \
    && mkdir var/log  \
    && mkdir var/logs  \
    && mkdir cache/dev  \
    && chown -R www-data:www-data var/

# Install Xdebug
# RUN pecl install -f xdebug \
#     && echo "zend_extension=$(find $(php-config --extension-dir) -name xdebug.so)" > /usr/local/etc/php/conf.d/20-xdebug.ini

WORKDIR /var/www/ 