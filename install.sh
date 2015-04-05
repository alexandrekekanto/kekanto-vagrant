#!/bin/bash

echo "Update"
sudo apt-get update

echo "Install Apache"
sudo apt-get install apache2

echo "Install MySql"
echo "mysql-server 				====> DB MySql last update"
echo "libapache2-mod-auth-mysql ====> Module auth mysql for Apache"
echo "php5-mysql			 	====> Module of the mysql for php5"
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql curl

echo "Install PHP"
echo "libapache2-mod-php5 ====> Module php5 for Apache"
echo "php5-mcrypt		  ====> Module of the mcrypt for php5"
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt

echo "Activating mod_rewrite apache2"
sudo a2enmod rewrite

echo "Install mod CURL of the php"
sudo apt-get install php5-curl

echo "restart apache2"
sudo service apache2 restart

echo "Install composer"
curl -sS https://getcomposer.org/installer | php

echo "View global composer move, examploe.: sudo mv composer.phar /usr/local/bin/composer"