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

# Copy vhost file
#COPY dummyapp.conf /etc/apache2/sites-available/dummyapp.conf

# Enable atlastock sites
#RUN a2ensite dummyapp

# Disable default site
#RUN a2dissite 000-default

# Enable module Rewrite
#RUN a2enmod rewrite

# Expose ports
#EXPOSE 80
#EXPOSE 81
#EXPOSE 443

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

