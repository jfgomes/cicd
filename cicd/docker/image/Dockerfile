# Dockerfile for Dummyapp
FROM php:7.1-apache

MAINTAINER José Gomes <jose.gomes@olx.com>

# Create folder to hold projects
RUN mkdir /var/www/dummyapp

# Create the volume
VOLUME /var/www/dummyapp

# Install dependency packages
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
	libxml2-dev \
	libmemcached-dev

# Install php extensions
#RUN docker-php-ext-install calendar \
#&&  docker-php-ext-install dba \
#&&  docker-php-ext-install dom \
#&&  docker-php-ext-install gettext \
#&&  docker-php-ext-install json \
#&&  docker-php-ext-install shmop \
#&&  docker-php-ext-install sockets \
#&&  docker-php-ext-install exif \
#&&  docker-php-ext-install sysvmsg \
#&&  docker-php-ext-install sysvsem \
#&&  docker-php-ext-install sysvshm \
#&&  docker-php-ext-install pdo_mysql \
#&&  docker-php-ext-install mysqli \
#&&  docker-php-ext-install soap \
#&&  docker-php-ext-install bcmath \
#&&  docker-php-ext-install wddx \
#&&  docker-php-ext-install zip \
#&&  docker-php-ext-install gd \
#&&  docker-php-ext-install mcrypt \
#&&  docker-php-ext-install tokenizer

# Install non provided extensions in base image, through PECL
#RUN pecl install apcu && docker-php-ext-enable apcu 
#RUN pecl install apcu_bc-beta && echo extension=apc.so > /usr/local/etc/php/conf.d/docker-php-ext-z_apc.ini
#RUN pecl install memcached && docker-php-ext-enable memcached

# Copy vhost file
COPY dummyapp.conf /etc/apache2/sites-available/dummyapp.conf

# Enable atlastock sites
RUN a2ensite dummyapp

# Disable default site
RUN a2dissite 000-default

# Enable module Rewrite
RUN a2enmod rewrite

# Expose ports
EXPOSE 80
EXPOSE 81
EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

