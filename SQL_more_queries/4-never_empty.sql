-- never empty

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

# Create the table id_not_null if not exists
echo "CREATE TABLE IF NOT EXISTS id_not_null (
  id INT DEFAULT 1,
  name VARCHAR(256)
);" | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion
echo 'INSERT INTO id_not_null (id, name) VALUES (89, "Holberton School");' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test SELECT
echo 'SELECT * FROM id_not_null;' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion without providing 'id'
echo 'INSERT INTO id_not_null (name) VALUES ("Holberton");' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test SELECT again
echo 'SELECT * FROM id_not_null;' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME
