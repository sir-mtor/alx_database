-- root project

# MySQL connection details
HOST="localhost"
USER="root"
PASSWORD="your_root_password"
USER_0D_1="user_0d_1"
USER_0D_1_PASSWORD="user_0d_1_pwd"

# Create user user_0d_1 if not exists
echo "CREATE USER IF NOT EXISTS '$USER_0D_1'@'$HOST' IDENTIFIED BY '$USER_0D_1_PASSWORD';" | mysql -h$HOST -u$USER -p$PASSWORD

# Grant all privileges to user_0d_1
echo "GRANT ALL PRIVILEGES ON *.* TO '$USER_0D_1'@'$HOST';" | mysql -h$HOST -u$USER -p$PASSWORD

# Display privileges for user_0d_1
echo "Grants for $USER_0D_1@$HOST"
mysql -h$HOST -u$USER -p$PASSWORD -e "SHOW GRANTS FOR '$USER_0D_1'@'$HOST';"
