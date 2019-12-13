FROM php:7.3-alpine
LABEL maintainer "TETSU<kaoru6strings@gmail.com>"

RUN apk --no-cache add \
        git \
        curl-dev \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev \
        libxml2-dev \
        zlib-dev \
        libzip-dev && \
    NPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) && \
    docker-php-ext-install -j${NPROC} \
        curl \
        dom \
        mbstring \
        pdo \
        pdo_mysql \
        simplexml \
        zip && \
    docker-php-ext-configure gd \
        --with-freetype-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ \
        --with-png-dir=/usr/include/ && \
    docker-php-ext-install -j${NPROC} gd && \
    mkdir -p /var/run/php-fpm && \
    chown root:root /var/run/php-fpm

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
