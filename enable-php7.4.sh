#!/bin/sh

    sudo a2dismod php8.0
    sudo a2dismod mpm_prefork php8.0
    sudo a2dismod mpm_event php8.0
    sudo a2dismod mpm_worker php8.0
    sudo a2dismod php8.1
    sudo a2dismod mpm_prefork php8.1
    sudo a2dismod mpm_event php8.1
    sudo a2dismod mpm_worker php8.1
    sudo a2dismod php8.2
    sudo a2dismod mpm_prefork
    sudo a2dismod mpm_event
    sudo a2dismod mpm_worker
    sudo a2dismod php8.0-fpm
    sudo a2dismod php8.1-fpm
    sudo a2dismod php8.2-fpm
    sudo a2disconf php8.2-fpm
    sudo a2disconf php8.1-fpm
    sudo a2disconf php8.0-fpm
    sudo a2disconf php8-fpm
    sudo apt install php7.4-fpm php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-soap php7.4-zip php7.4-bcmath -y
    sudo a2enmod php7.4
    sudo service apache2 restart
    sudo update-alternatives --set php /usr/bin/php7.4
    sudo update-alternatives --set phar /usr/bin/phar7.4
    sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.4
    sudo a2enmod mpm_prefork php7.4
    sudo a2enmod mpm_event php7.4
    sudo a2enmod mpm_worker php7.4
    sudo service apache2 restart
    sudo a2enmod php7.4-fpm
    sudo a2enconf php7.4-fpm
    sudo systemctl restart php7.4-fpm
    sudo systemctl restart apache2
    php -v
    
