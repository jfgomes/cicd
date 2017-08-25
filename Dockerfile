# Dockerfile for Dummyapp
FROM php:7.1-apache

MAINTAINER José Gomes <jose.gomes@olx.com>

# Create folder to hold projects
RUN mkdir /var/www/dummyapp

# Create the volume
#VOLUME /var/www/dummyapp
#COPY . /var/www/dummyapp

# Install Composer and make it available in the PATH
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

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

ARG DOCKER_GID=993

RUN groupadd -g ${DOCKER_GID} docker \
  && curl -sSL https://get.docker.com/ | sh \
  && apt-get -q autoremove \
  && apt-get -q clean -y \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*.bin 

RUN useradd -m -d /home/jenkins -s /bin/sh jenkins \
  && usermod -aG docker jenkins
  
#RUN  echo "IdentityFile ~/.ssh/id_rsa" >> /etc/ssh/ssh_config
#RUN mkdir -p /root/.ssh
#ADD id_rsa /root/.ssh/id_rsa
#RUN chmod 700 /root/.ssh/id_rsa
#RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

