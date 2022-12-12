CREATE DATABASE wordpress;
CREATE USER 'olakhdar'@'%' IDENTIFIED BY 'oussama@1';
GRANT all ON wordpress.* TO 'olakhdar'@'%';
FLUSH PRIVILEGES;