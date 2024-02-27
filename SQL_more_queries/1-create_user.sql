-- root project
SHOW GRANT FOR 'user_0d_1'@'localhost'IDENTIFIED BY 'user_0d_1_pwd';
SELECT host, user, authentication_string FROM mysql.user WHERE user = 'user_0d_1';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost'