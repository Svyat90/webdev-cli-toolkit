sudo service mysql stop
sudo mysqld_safe --skip-grant-tables --skip-networking &

# if: there is error "mysqld_safe Directory '/var/run/mysqld' for UNIX socket file don't exists."
sudo mkdir -p /var/run/mysqld
sudo chown mysql:mysql /var/run/mysqld
sudo mysqld_safe --skip-grant-tables --skip-networking &
# endif

# Open new terminal:
mysql -u root

USE mysql;

# For MySQL 5.7.6 and later
UPDATE user SET authentication_string=PASSWORD('new_password') WHERE User='root';
# OR for MySQL versions earlier than 5.7.6
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('new_password');
# OR
ALTER USER 'root'@'localhost' IDENTIFIED WITH 'mysql_native_password' BY '(82954Iat)';

FLUSH PRIVILEGES;
quit;

sudo service mysql stop
sudo service mysql start

# if: there is error: "Job for mysql.service failed because the control process exited with error code" kill all run mysql processes and run again:
sudo pkill -f "mysql"
ps aux | grep mysql
kill -9 123456