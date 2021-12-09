                                                                      EC2 to EC2 Instance Assignment 
                                                                            Ashley Chinnici 
Public IP Address:  20.115.25.244
Private IP Address: 10.0.0.4

2nd instance for dump of sql file
Public IP: 20.124.8.176
Private IP: 10.0.0.5

#Step 1: Create UBUNTU instance setup and deploy instance without deploying a pem key 

#Step 2: Open port 22 (SSH) and 3306 (MYSQL) in networking with new inbound rule for 3306

#Step 3: Connect to the UBUNTU instance using Replit terminal

#Step 4: Run command -> Command: ssh AshleyAHI@20.115.25.244

#Step 5: Run command after connecting to machine -> Sudo apt-get update

#Step 6: Create User UBUNTU
#Username: dba
#Password: ahi2021
#Command Steps:
## Command-> sudo adduser ‘dba’
## Command-> sudo password ‘ahi2021’
##Edit configuration command -> /etc/ssh/sshd_config
##Set Password Authentication and permit root login to yes
##Command -> Restart ssh
#sudo service ssh restart

#Step 7: Install MySQL
## Command-> sudo apt install mysql-client mysql-server
##Select ‘OK’
##Update listings
## Command-> sudo apt-get update

#Step 8: Check status 
## Command-> sudo service mysql status
## Command-> display actively running

#Step 9: Change bind address to 0.0.0.0
## Command-> sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
## Command-> sudo service mysql restart

#Step 10: Start MySQL
## Command-> Sudo MySQL

#Step 11: #Create MySQL user
## Command-> Create user 'DBAMYSQL'@'%' IDENTIFIED BY 'ahi2021';
## Grant all privileges to SQL user -> GRANT ALL PRIVILEGES ON *.* TO 'DBAMYSQL'@% WITH GRANT OPTION;
## Command-> Show grants;

#Step 12 Create database
## Command-> Create database tempdata;
## Command-> Show databases;

#Step 13: Jupyter notebook to insert csv H1N1 data
##See attached notebook labeled AHI_DEMO.ipynb
#Step 14: #Create a dump (.sql) file
## Command-> mysqldump -u dba -p e2e > e2e_dump.sql
## Command-> sudo mysqldump-apt e2e>e2e_dump.sql
##  Command-> ls

#Step 15: Launching of 2nd instance on Azure 
### Open Ports 22 and 3306
###Connect machine to Replit terminal
## ssh Ashley-AHI@20.124.8.176

#Step 16: SCP to local Machine
##scp e2e_dump.sql client@20.115.25.244:/home/client
##On second instance, input the following command:
##sudo mysql e2e < e2e_dump.sql

#Step 17: Connect to MYSQL Workbench and create a trigger for H1N1
##See file attachment labeled AHI_Demo.sql
