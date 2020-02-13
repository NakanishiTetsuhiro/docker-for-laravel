FROM php:7.4-fpm-alpine
LABEL maintainer "TETSU<kaoru6strings@gmail.com>"

RUN docker-php-ext-install pdo_mysql

RUN apk add --no-cache $PHPIZE_DEPS && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
RUN composer global require hirak/prestissimo

RUN mkdir -p /app

ADD ./php.ini /usr/local/etc/php/php.ini

WORKDIR /app

RUN apk add --update --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone && \
    apk del tzdata
