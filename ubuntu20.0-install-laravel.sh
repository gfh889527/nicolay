#/bin/bash
#This is Onclick install laravel shell script for laravel!
#Only can use for ubuntu 20.0 stystem
#Author:LI DACHUN
#Email:1139504970@qq.com
UBUNTU_UPDATE=$(apt-get update -y)
UBUNTU_INSTALL_PHP_APACHE_MYSQL=$(apt-get install apache2 php7.4 libapache2-mod-php7.4 php7.4-curl php-pear php7.4-gd php7.4-dev php7.4-zip php7.4-mbstring php7.4-mysql php7.4-xml curl -y)
UBUNTU_START_APACHE=$(systemctl start apache2)
UBUNTU_ENABLE_APACHE=$(systemctl enable apache2)
UBUNTU_INSTALL_COMPOSER=$(curl -sS https://getcomposer.org/installer | php)
UBUNTU_GLOBAL_COMPOSER=$(mv composer.phar /usr/local/bin/composer)
UBUNTU_CHMOD_COMPOSER=$(chmod +x /usr/local/bin/composer)
UBUNTU_COMPOSER_VERSION=$(composer --version)
UBUNTU_INSTALL_LARAVEL=$(cd /var/www/html && composer create-project laravel/laravel laravelapp --prefer-dist)
UBUNTU_LARAVEL_VERSION=$(cd laravelapp && php artisan)
UBUNTU_CHMOD_APP=$(chown -R www-data:www-data /var/www/html/laravelapp)
UBUNTU_CHMOD_APP2=$(chmod -R 775 /var/www/html/laravelapp/storage)
UBUNTU_ADD_WEBSITE=$(nano /etc/apache2/sites-available/laravel.conf)
UBUNTU_APACHE1=$(a2ensite laravel.conf)
UBUNTU_APACHE2=$(a2enmod rewrite)
UBUNTU_APACHE3=$(systemctl restart apache2)


echo ${UBUNTU_UPDATE}
echo ${UBUNTU_INSTALL_PHP_APACHE_MYSQL}
echo ${UBUNTU_START_APACHE}
echo ${UBUNTU_ENABLE_APACHE}
echo ${UBUNTU_INSTALL_COMPOSER}
echo ${UBUNTU_GLOBAL_COMPOSER}
echo ${UBUNTU_CHMOD_COMPOSER}
echo ${UBUNTU_COMPOSER_VERSION}
echo ${UBUNTU_INSTALL_LARAVEL}
echo ${UBUNTU_LARAVEL_VERSION}
echo ${UBUNTU_CHMOD_APP}
echo ${UBUNTU_CHMOD_APP2}
echo ${UBUNTU_ADD_WEBSITE}
echo ${UBUNTU_APACHE1}
echo ${UBUNTU_APACHE2}
echo ${UBUNTU_APACHE3}
