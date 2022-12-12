#!/bin/bash

wp core config --allow-root --dbhost="mariadb" --dbname="wordpress" --dbuser="olakhdar" --dbpass="oussama@1"
chmod 600 wp-config.php
chown -R www-data *
wp core install --allow-root --url="localhost" --title="oussama" --admin_name="olakhdar" --admin_password="oussama@1" --admin_email="olakhdar@student.1337.ma"

exec php-fpm7.3 -F -R