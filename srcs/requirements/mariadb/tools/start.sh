service mysql start;
mysql -e "CREATE DATABASE IF NOT EXISTS \`${DATABASE_NAME}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${DATABASE_USER}\`@'localhost' IDENTIFIED BY '${DATABASE_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${DATABASE_NAME}\`.* TO \`${DATABASE_USER}\`@'%' IDENTIFIED BY '${DATABASE_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
exec mysqld_safe