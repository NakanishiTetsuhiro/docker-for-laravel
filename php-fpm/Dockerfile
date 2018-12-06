FROM php:7-fpm

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y git zlib1g-dev zip unzip libpng-dev libxml2-dev autoconf g++ libtool make pngquant gcc pkg-config libmagickwand-dev
RUN pecl channel-update pecl.php.net
RUN pecl install imagick \
    && docker-php-ext-enable imagick
RUN docker-php-ext-install zip
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install  gd

RUN pecl install xdebug && \
    docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN composer global require hirak/prestissimo

RUN mkdir -p /app

WORKDIR /app

ADD ./php.ini /usr/local/etc/php/php.ini

