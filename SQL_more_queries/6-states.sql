--  a script that creates the database hbtn_0d_usa and the table states (in the database hbtn_0d_usa) 

-- creates a new database hbtn_0d_usa
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;


-- creates a table states (in the database hbtn_0d_usa) 
USE hbtn_0d_usa;
CREATE TABLE IF NOT EXISTS states(id INT AUTO_INCREMENT NOT NULL UNIQUE PRIMARY