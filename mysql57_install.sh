#!/usr/bin/bash

# Add the new MySQL repository to the CentOS 7 server with this yum command.
sudo yum localinstall https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm

# install 'mysql-community-server' with yum.
sudo yum install mysql-community-server -y

# start it and add MySQL to start at boot time automatically with the systemctl command.
sudo systemctl start mysqld
sudo systemctl enable mysqld
sudo systemctl status mysqld

# To check if the mysql service automatically starts at the boot time or not, you can use the is-enabled option below.
sudo systemctl is-enabled mysqld
