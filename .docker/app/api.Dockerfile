FROM php:7.3.6-fpm-alpine3.9 as build-stage
RUN apk update
RUN apk add openssl mysql-client nodejs npm php7-dev php7-pear gcc musl-dev musl unzip libnsl libffi-dev libarchive-tools libaio bash tar g++ git php7-gd php7-curl ca-certificates && \
	apk add  && \
	apk upgrade && \
	rm -rf /var/lib/apk/lists/*
RUN docker-php-ext-install pdo pdo_mysql

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /var/www
RUN rm -rf /var/www/html

RUN apk add composer \
	nano

ADD api/ /var/www

COPY api.sh /var/www
RUN ln -s public html

EXPOSE 9000
ENTRYPOINT ["php-fpm"]