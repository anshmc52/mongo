#!/bin/bash

nano /etc/yum.repos.d/mongodb-org-4.2.repo

#insert content below in repository 
[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc

yum repolist
yum -y install mongodb-org
systemctl enable mongod
systemctl start mongod