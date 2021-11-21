#/bin/bash
#This is Onclick install laravel shell script for laravel!
#Only can use for ubuntu 20.0 stystem
#Author:LI DACHUN
#Email:1139504970@qq.com
DACHUN1=$(apt-get update -y)
DACHUN2=$(apt-get install apache2 php7.4 libapache2-mod-php7.4 php7.4-curl php-pear php7.4-gd php7.4-dev php7.4-zip php7.4-mbstring php7.4-mysql php7.4-xml curl -y)
DACHUN3=$(systemctl start apache2)
DACHUN4=$(systemctl enable apache2)
DACHUN5=$(curl -sS https://getcomposer.org/installer | php)
DACHUN6=$(mv composer.phar /usr/local/bin/composer)
DACHUN7=$(chmod +x /usr/local/bin/composer)
DACHUN8=$(composer --version)
DACHUN9=$(cd /var/www/html && composer create-project laravel/laravel laravelapp --prefer-dist)
DACHUN10=$(cd laravelapp && php artisan)
DACHUN11=$(chown -R www-data:www-data /var/www/html/laravelapp)
DACHUN12=$(chmod -R 775 /var/www/html/laravelapp/storage)
DACHUN13=$(nano /etc/apache2/sites-available/laravel.conf)
DACHUN14=$(a2ensite laravel.conf)
DACHUN15=$(a2enmod rewrite)
DACHUN16=$(systemctl restart apache2)


echo ${DACHUN1}
echo ${DACHUN2}
echo ${DACHUN3}
echo ${DACHUN4}
echo ${DACHUN5}
echo ${DACHUN6}
echo ${DACHUN7}
echo ${DACHUN8}
echo ${DACHUN9}
echo ${DACHUN10}
echo ${DACHUN11}
echo ${DACHUN12}
echo ${DACHUN13}
echo ${DACHUN14}
echo ${DACHUN15}
echo ${DACHUN16}







