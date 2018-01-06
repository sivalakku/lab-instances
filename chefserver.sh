#!/bin/bash

sudo su -
yum install https://packages.chef.io/files/stable/chef-server/12.17.15/el/7/chef-server-core-12.17.15-1.el7.x86_64.rpm -y
sleep 10
chef-server-ctl reconfigure
sleep 5
chef-server-ctl user-create admin admin user admin@localhost.com 'admin123' --filename /opt/admin.pem
sleep 5
chef-server-ctl org-create devops 'devops training' --association_user admin --filename /opt/devops.pem
sleep 5
chef-server-ctl install chef-manage
sleep 5
chef-server-ctl reconfigure
sleep 5
chef-manage-ctl reconfigure

