--- psql -U postgres_user_name -h postgres_host
CREATE USER new_user_name WITH PASSWORD 'your_password';
CREATE DATABASE new_database_name WITH OWNER = new_user_name;
GRANT ALL PRIVILEGES ON DATABASE new_database_name TO new_user_name;
\q

--- add following string to config file if you have an error during connection from application
--- sudo nano /etc/postgresql/14/main/pg_hba.conf
--- local   all             reviews                                 trust
