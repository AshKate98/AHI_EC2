# AHI_EC2
EC2 TO EC2 

Step 1: Create UBUNTU instance setup and deploy instance without deploying a pem key 

Step 2: Open port 22 (SSH) and 3006 (MYSQL)

Step 3: Connect to the UBUNTU instance using Replit

Step 4: Run command -> Command: ssh AshleyAHI@20.115.25.244

Step 5: Run command -> Sudo apt-get update

Step 6: Create User UBUNTU

Username: dba

Password: ahi2021

Command Steps:
 
sudo adduser dba

sudo password ahi2021

-Restart ssh

sudo service ssh restart

Step 7: Install MySQL

sudo apt install mysql-server mysql-client

 Select ‘OK’
 
Update listings

sudo apt-get update

Step 8: Install MySQL on Ubuntu

sudo apt-get install mysql-server

sudo mysql_secure_installation

Validate password/ Establish Security

To check Status
sudo service mysql status

Step 9: create a MYSQL User

Start MYSQL 

Sudo MYSQL

Create a user: DBAMYSQL

Password: ahi2021

CREATE USER 'DBAMYSQL'@'%' IDENTIFIED BY 'ahi2021';

GRANT ALL PRIVILEGES ON *.* TO 'DBAMYSQL'@'%' WITH GRANT OPTION;

Step 10: Create a database 

Create database tempdata;

Sudo nano /etc.mysql/mysql.conf.d/mysqld.cnf

/etc/init.d/mysql restart 

See Jupyter Notebook Attachment 

Create a backup sql dump backup command mysqldump -u DBAMYSQL -p e2e >e2e_dump.sql

SCP to local machine 

Create trigger on MYSQL Workbench sql attachment 

Step 11: Hot replica 
