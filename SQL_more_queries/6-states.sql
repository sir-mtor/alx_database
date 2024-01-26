-- states

# MySQL connection details
HOST="localhost"
USER="root"
PASSWORD="your_root_password"
DB_NAME="hbtn_0d_usa"

# Create the database hbtn_0d_usa if not exists
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -h$HOST -u$USER -p$PASSWORD

# Switch to the hbtn_0d_usa database
echo "USE $DB_NAME;" | mysql -h$HOST -u$USER -p$PASSWORD

# Create the table states if not exists
echo "CREATE TABLE IF NOT EXISTS states (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(256) NOT NULL
);" | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion
echo 'INSERT INTO states (name) VALUES ("California"), ("Arizona"), ("Texas");' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test SELECT
echo 'SELECT * FROM states;' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME
