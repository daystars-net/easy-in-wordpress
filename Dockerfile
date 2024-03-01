FROM wordpress:6-php8.2-fpm-alpine
ARG WORDPRESS_UID
ARG WORDPRESS_GID
RUN apk update && apk add shadow
RUN groupmod -g $WORDPRESS_GID www-data
RUN usermod -u $WORDPRESS_UID www-data
