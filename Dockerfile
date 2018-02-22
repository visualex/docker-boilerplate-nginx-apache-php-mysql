FROM php:7.2-apache

LABEL maintainer="alex@tresorg.com"

RUN apt-get update
RUN apt-get -y install libxml2-dev
RUN apt-get install -y zlib1g-dev libicu-dev g++
RUN apt-get install openssl
RUN apt-get install -y libpng-dev

RUN docker-php-ext-install bcmath
RUN docker-php-ext-install calendar
RUN docker-php-ext-install ctype
RUN docker-php-ext-install dba
RUN docker-php-ext-install dom
RUN docker-php-ext-install exif
RUN docker-php-ext-install fileinfo
RUN docker-php-ext-configure intl
RUN docker-php-ext-install intl
RUN docker-php-ext-install json
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install mysqli
RUN apt-get -y install sqlite3
RUN apt-get -y install libsqlite3-dev
RUN docker-php-ext-install pdo pdo_mysql pdo_sqlite
RUN docker-php-ext-install posix
RUN docker-php-ext-install session
RUN docker-php-ext-install simplexml
RUN docker-php-ext-install sockets
RUN apt install -y libtidy-dev
RUN docker-php-ext-install tidy
RUN docker-php-ext-install zip
RUN apt-get install -y libjpeg-dev
RUN docker-php-ext-configure gd --with-png-dir=/usr/lib --with-jpeg-dir=/usr/lib
RUN docker-php-ext-install gd

RUN a2enmod rewrite
RUN a2enmod ssl

EXPOSE 80
EXPOSE 443
