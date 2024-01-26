# MySQL connection details
HOST="localhost"
USER="root"
PASSWORD="your_root_password"

# Create user user_0d_1
echo "CREATE USER 'user_0d_1'@'$HOST';" | mysql -h$HOST -u$USER -p$PASSWORD

# Grant privileges to user_0d_1
echo "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'$HOST';" | mysql -h$HOST -u$USER -p$PASSWORD

# Create user user_0d_2
echo "CREATE USER 'user_0d_2'@'$HOST';" | mysql -h$HOST -u$USER -p$PASSWORD

# Grant privileges to user_0d_2
echo "GRANT ALL PRIVILEGES ON *.* TO 'user_0d_2'@'$HOST';" | mysql -h$HOST -u$USER -p$PASSWORD

# Display privileges for both users
echo "Grants for user_0d_1@$HOST"
mysql -h$HOST -u$USER -p$PASSWORD -e "SHOW GRANTS FOR 'user_0d_1'@'$HOST';"

echo "Grants for user_0d_2@$HOST"
mysql -h$HOST -u$USER -p$PASSWORD -e "SHOW GRANTS FOR 'user_0d_2'@'$HOST';"
