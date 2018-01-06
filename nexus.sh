#!/bin/bash

sudo su -
wget https://sonatype-download.global.ssl.fastly.net/nexus/3/nexus-3.7.1-02-unix.tar.gz
tar xf nexus-3.7.1-02-unix.tar.gz
yum install java -y
cd nexus-3.7.1-02/bin
./nexus start
