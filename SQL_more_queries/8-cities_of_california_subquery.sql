-- cities in cali

# MySQL connection details
HOST="localhost"
USER="root"
PASSWORD="your_root_password"
DB_NAME=$1

# Check if the database name is provided as an argument
if [ -z "$DB_NAME" ]; then
  echo "Please provide the database name as an argument."
  exit 1
fi

# Query to list all cities of California without using JOIN
echo "SELECT * FROM cities WHERE state_id = (SELECT id FROM states WHERE name = 'California') ORDER BY id ASC;" | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME
