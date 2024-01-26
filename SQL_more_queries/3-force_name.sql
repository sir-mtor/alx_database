-- always a name

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

# Create the table force_name if not exists
echo "CREATE TABLE IF NOT EXISTS force_name (
  id INT,
  name VARCHAR(256) NOT NULL
);" | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion
echo 'INSERT INTO force_name (id, name) VALUES (89, "Holberton School");' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test SELECT
echo 'SELECT * FROM force_name;' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion with missing 'name' value
echo 'INSERT INTO force_name (id) VALUES (333);' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME
