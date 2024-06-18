CREATE DATABASE db_name;
CREATE USER 'db_name'@'localhost' IDENTIFIED BY 'db_password';
GRANT ALL PRIVILEGES ON db_name.* TO 'db_name'@'localhost';
FLUSH PRIVILEGES;
EXIT;
