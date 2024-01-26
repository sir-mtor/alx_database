-- just working

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

# Create the table unique_id if not exists
echo "CREATE TABLE IF NOT EXISTS unique_id (
  id INT DEFAULT 1 UNIQUE,
  name VARCHAR(256)
);" | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion
echo 'INSERT INTO unique_id (id, name) VALUES (89, "Holberton School");' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test SELECT
echo 'SELECT * FROM unique_id;' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion with duplicate 'id'
echo 'INSERT INTO unique_id (id, name) VALUES (89, "Holberton");' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test SELECT again
echo 'SELECT * FROM unique_id;' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME
