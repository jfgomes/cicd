#!/bin/bash
set x
apt-get update
yes | apt-get install php-soap
yes | apt-get install php-pear php5-dev
yes | pecl install xdebug
yes | apt-get install php5-dom
pecl install xdebug-beta && docker-php-ext-enable xdebug    
cd /var/www && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
cd /var/www && php composer-setup.php
cd /var/www && php -r "unlink('composer-setup.php');"
cd /var/www && chmod 777 composer.phar
cd /var/www && php composer.phar update

phpunit --version

exit 0
