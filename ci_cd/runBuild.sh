#!/bin/bash
set x
yes | apt-get install php-soap
yes | pecl install xdebug
pecl install xdebug-beta && docker-php-ext-enable xdebug    
cd /var/www && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
cd /var/www && php composer-setup.php
cd /var/www && php -r "unlink('composer-setup.php');"
cd /var/www && chmod 777 composer.phar
cd /var/www && php composer.phar update
exit 0
