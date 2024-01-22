# MySQL connection details
MYSQL_USER="sir2code"
MYSQL_PASSWORD="(1234567890)"
MYSQL_HOST="New_local"

# Get the database name from the command-line argument
DATABASE_NAME="$1"

# Check if the database name is provided
if [ -z "$DATABASE_NAME" ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Execute MySQL query to print the table structure
mysql -h"${MYSQL_HOST}" -u"${MYSQL_USER}" -p"${MYSQL_PASSWORD}" -e "USE information_schema; SELECT COLUMN_NAME, COLUMN_TYPE, IS_NULLABLE, COLUMN_DEFAULT FROM COLUMNS WHERE TABLE_SCHEMA='${DATABASE_NAME}' AND TABLE_NAME='first_table';"
