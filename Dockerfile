FROM php:8.2-rc-apache
#RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
WORKDIR /app
COPY . .
ADD *.php /var/www/html/
EXPOSE 80

