#!/usr/bin/bash

# Install wget:

sudo yum install wget -y


# Install tar:

sudo yum install tar -y


# Install Python 3.7.4

cd /tmp/

sudo yum install gcc openssl-devel bzip2-devel -y

sudo yum groupinstall "Development Tools" -y

sudo yum -y install gcc gcc-c++ zlib zlib-devel libffi-devel

sudo wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz

sudo tar xzf Python-3.7.4.tgz

cd Python-3.7.4

sudo ./configure --enable-optimizations

sudo make altinstall

cd -

python3.7 --version
