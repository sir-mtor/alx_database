-- PRIVILEGES

# MySQL connection details
HOST="localhost"
USER="root"
PASSWORD="your_root_password"
USER_0D_2="user_0d_2"
USER_0D_2_PASSWORD="user_0d_2_pwd"
DB_NAME="hbtn_0d_2"

# Create database hbtn_0d_2 if not exists
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -h$HOST -u$USER -p$PASSWORD

# Create user user_0d_2 if not exists
echo "CREATE USER IF NOT EXISTS '$USER_0D_2'@'$HOST' IDENTIFIED BY '$USER_0D_2_PASSWORD';" | mysql -h$HOST -u$USER -p$PASSWORD

# Grant SELECT privilege on hbtn_0d_2 to user_0d_2
echo "GRANT USAGE ON *.* TO '$USER_0D_2'@'$HOST';" | mysql -h$HOST -u$USER -p$PASSWORD
echo "GRANT SELECT ON $DB_NAME.* TO '$USER_0D_2'@'$HOST';" | mysql -h$HOST -u$USER -p$PASSWORD

# Display privileges for user_0d_2
echo "Grants for $USER_0D_2@$HOST"
mysql -h$HOST -u$USER -p$PASSWORD -e "SHOW GRANTS FOR '$USER_0D_2'@'$HOST';"
