#!/bin/sh

    sudo a2dismod php7.4
    sudo a2dismod mpm_prefork
    sudo a2dismod mpm_event
    sudo a2dismod mpm_worker
    sudo a2dismod php7.4-fpm
    sudo a2disconf php7.4-fpm
    sudo apt install php8.2-fpm php8.2-common php8.2-mysql php8.2-xml php8.2-xmlrpc php8.2-curl php8.2-gd php8.2-imagick php8.2-cli php8.2-dev php8.2-imap php8.2-mbstring php8.2-soap php8.2-zip php8.2-bcmath -y
    sudo a2enmod php8.2
    sudo service apache2 restart
    sudo update-alternatives --set php /usr/bin/php8.2
    sudo update-alternatives --set phar /usr/bin/phar8.2
    sudo update-alternatives --set phar.phar /usr/bin/phar.phar8.2
    sudo a2enmod mpm_prefork php8.2
    sudo a2enmod mpm_event php8.2
    sudo a2enmod mpm_worker php8.2
    sudo service apache2 restart
    sudo a2enmod php8.2-fpm
    sudo a2enconf php8.2-fpm
    sudo systemctl restart php8.2-fpm
    sudo systemctl restart apache2
    php -v
    
