#!/bin/bash

#echo "Enter backup file name.."
#read filename
filename="abc.tar.gz"
if [ -e /tmp/$filename ]
then
   sudo rm -f /tmp/$filename
else
    echo "File does not exist"
fi

# Determine Linux distribution
if command -v yum &> /dev/null; then
    distro="yum"
elif command -v apt-get &> /dev/null; then
    distro="apt-get"
else
    echo "Unsupported Linux distribution"
    exit 1
fi
echo $distro

# Install MySQL
if [[ $distro == "yum" ]]; then
    sudo yum update -y
    sudo yum install -y mysql-server
elif [[ $distro == "apt-get" ]]; then
    #sudo apt-get update -y
    sudo apt-get install -y mysql-server
fi

#create database, table, and insert data
sudo mysql -u root -ptest << EOF
CREATE DATABASE test;
USE test;
CREATE TABLE users (id INT NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL, email VARCHAR(30) NOT NULL, PRIMARY KEY (id));
INSERT INTO users (name, email) VALUES ('Varun', 'Varun@example.com'), ('Anita', 'Anita@example.com');
EOF

# Take backup of "test" database
sudo mysqldump -u root -ptest test > /home/varun/LinuxTask/test.sql 

# Create tar file of backup and store it in /tmp directory
tar czf /tmp/$filename /home/varun/LinuxTask/test.sql 