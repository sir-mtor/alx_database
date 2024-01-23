-- intro to database on sql
# MySQL connection details
MYSQL_USER="sir2code"
MYSQL_PASSWORD="(1234567890)"
MYSQL_HOST="New_local"

# Database name
DATABASE_NAME="hbtn_0c_0"

# Execute MySQL query to create the database
mysql -h New_local -P 3306 -u sir2code -p'(1234567890)'"-e "CREATE DATABASE IF NOT EXISTS ${"hbtn_0c_0"};"
