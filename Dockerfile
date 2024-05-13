FROM php:8.1-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev unzip \ 
    libcurl4-openssl-dev --no-install-recommends 

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN mkdir /application
COPY . /application/
WORKDIR /application/

ENV COMPOSER_ALLOW_SUPERUSER=1
RUN composer update
RUN composer install --prefer-dist --no-dev
#ENTRYPOINT ["bash", "-c", "php index.php"]