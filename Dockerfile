FROM php:7.2-alpine

RUN apk update
RUN apk add composer
RUN composer global require hirak/prestissimo

# for codecov
RUN apk add curl bash git

# xdebug
RUN apk add autoconf
RUN apk add gcc g++ make
RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

# mysql
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-enable pdo_mysql

# mbstring
RUN docker-php-ext-install mbstring
RUN docker-php-ext-enable mbstring
