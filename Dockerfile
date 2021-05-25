FROM php:fpm-alpine3.10

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
    install-php-extensions gd xdebug amqp apcu bcmath calendar exif mcrypt pdo_mysql redis

COPY base.ini /usr/local/etc/php/conf.d