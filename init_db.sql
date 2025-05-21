ALTER USER 'root'@'localhost' IDENTIFIED BY 'mike';
CREATE DATABASE dental_clinic;
GRANT ALL PRIVILEGES ON demodb.* TO 'root'@'localhost';
FLUSH PRIVILEGES;
