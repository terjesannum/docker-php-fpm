FROM php:8.1.3-fpm

LABEL org.opencontainers.image.authors="Terje Sannum <terje@offpiste.org>" \
      org.opencontainers.image.source="https://github.com/terjesannum/docker-php-fpm"

RUN apt-get update && \
    apt-get install -y git unzip && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install mysqli

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    composer require google/apiclient && \
    composer require aws/aws-sdk-php
