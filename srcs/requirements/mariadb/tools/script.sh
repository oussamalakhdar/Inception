#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME};" | mysql
echo "CREATE USER '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" | mysql
echo "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql
echo "use mysql;UPDATE user SET Password=PASSWORD('${DB_ROOT_PASSWORD}') WHERE user='root'; \
        UPDATE user SET plugin = '' WHERE user = 'root';FLUSH PRIVILEGES;" | mysql
