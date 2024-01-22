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

# Execute MySQL query to create the table second_table if it doesn't exist
mysql -h"${MYSQL_HOST}" -u"${MYSQL_USER}" -p"${MYSQL_PASSWORD}" -e "USE ${DATABASE_NAME}; CREATE TABLE IF NOT EXISTS second_table (id INT, name VARCHAR(256), score INT);"

# Execute MySQL queries to add multiple rows to second_table
mysql -h"${MYSQL_HOST}" -u"${MYSQL_USER}" -p"${MYSQL_PASSWORD}" -e "USE ${DATABASE_NAME}; INSERT INTO second_table (id, name, score) VALUES (1, 'John', 10), (2, 'Alex', 3), (3, 'Bob', 14), (4, 'George', 8);"
