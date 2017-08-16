FROM php:7.1-apache
COPY phpunit/ /var/www/html
RUN phpunit
EXPOSE 80
