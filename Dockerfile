FROM php:fpm-alpine3.10

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/local/bin/

RUN install-php-extensions amqp apcu bcmath calendar exif grpc gd xdebug imagick intl mcrypt memcached memcache pcntl pdo_mysql protobuf swoole