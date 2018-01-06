#!/bin/bash

yum install maven -y
sleep 10
wget https://github.com/carreerit/mavenrepo/archive/master.zip
sleep 10
uzip master.zip
cd mavenrepo-master/
mvn compile
sleep 10
mvn compile package
