-- listing tables
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

# Execute MySQL query to list all tables in the specified database
mysql -h"${MYSQL_HOST}" -u"${MYSQL_USER}" -p"${MYSQL_PASSWORD}" -e "USE ${DATABASE_NAME}; SHOW TABLES;"