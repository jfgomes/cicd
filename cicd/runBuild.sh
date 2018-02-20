#!/bin/bash
set x
yes | apt-get install php-soap
yes | pecl install xdebug
pecl install xdebug-beta && docker-php-ext-enable xdebug    
cd /var/www/realestate/jaws/codebase && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
cd /var/www/realestate/jaws/codebase && php composer-setup.php
cd /var/www/realestate/jaws/codebase && php -r "unlink('composer-setup.php');"
cd /var/www/realestate/jaws/codebase && chmod 777 composer.phar
cd /var/www/realestate/jaws/codebase && php composer.phar update
exit 0
