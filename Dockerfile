FROM wordpress:6-php8.2-fpm-alpine

RUN apk update && apk add shadow
RUN groupmod -g 75009 www-data