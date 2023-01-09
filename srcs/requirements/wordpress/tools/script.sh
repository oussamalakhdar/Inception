#!/bin/bash

wp core config --allow-root --dbhost="${DB_HOST}" --dbname="${DB_NAME}" --dbuser="${DB_USER}" --dbpass="${DB_PASSWORD}"
chmod 600 wp-config.php
chown -R www-data *

wp config set --allow-root 'WP_REDIS_HOST' "${REDIS_HOST}";
wp config set --allow-root 'WP_REDIS_PORT' 6379;

wp core install --allow-root --url="${WP_URL}" --title="${WP_TITLE}" --admin_name="${WP_ADMIN}" --admin_password="${WP_ADMIN_PASS}" --admin_email="${WP_ADMIN_MAIL}"
wp user create --allow-root ${WP_USER} ${WP_USER_mail} --user_pass=${WP_USER_PASS} --role=${WP_USER_ROLE}

wp plugin install --allow-root redis-cache --activate
wp redis enable --allow-root

exec php-fpm7.3 -F -R