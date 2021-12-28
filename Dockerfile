FROM php:8.1.1-fpm

LABEL org.opencontainers.image.authors="Terje Sannum <terje@offpiste.org>" \
      org.opencontainers.image.source="https://github.com/terjesannum/docker-php-fpm-mysqli"

RUN docker-php-ext-install mysqli
