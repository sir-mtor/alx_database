-- cities

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

# Query to list all cities with corresponding state names using JOIN
echo "SELECT cities.id, cities.name, states.name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;" | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME
