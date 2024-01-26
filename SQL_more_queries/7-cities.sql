-- cities

# MySQL connection details
HOST="localhost"
USER="root"
PASSWORD="your_root_password"
DB_NAME="hbtn_0d_usa"

# Create the database hbtn_0d_usa if not exists
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -h$HOST -u$USER -p$PASSWORD

# Switch to the hbtn_0d_usa database
echo "USE $DB_NAME;" | mysql -h$HOST -u$USER -p$PASSWORD

# Create the table cities if not exists
echo "CREATE TABLE IF NOT EXISTS cities (
  id INT AUTO_INCREMENT PRIMARY KEY,
  state_id INT NOT NULL,
  name VARCHAR(256) NOT NULL,
  FOREIGN KEY (state_id) REFERENCES states(id)
);" | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion
echo 'INSERT INTO cities (state_id, name) VALUES (1, "San Francisco");' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test SELECT
echo 'SELECT * FROM cities;' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME

# Test insertion with invalid 'state_id'
echo 'INSERT INTO cities (state_id, name) VALUES (10, "Paris");' | mysql -h$HOST -u$USER -p$PASSWORD $DB_NAME
