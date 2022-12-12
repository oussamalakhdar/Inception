#!/bin/bash

wp core config --allow-root --dbhost="mariadb" --dbname="wordpress" --dbuser="olakhdar" --dbpass="oussama@1"
chmod 600 wp-config.php
chown -R www-data *
wp core install --allow-root --url="localhost" --title="olakhdar" --admin_name="olakhdar" --admin_password="oussama@1" --admin_email="olakhdar@student.1337.ma"
wp user create --allow-root oussama lakhdaroussama99@gmail.com --user_pass=oussama@2 --role=editor

exec php-fpm7.3 -F -R