#!/bin/bash


sudo yum install -y curl policycoreutils-python openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd
sudo firewall-cmd --permanent --add-service=http
sudo systemctl reload firewalld
sleep 10
sudo yum install postfix
sudo systemctl enable postfix
sudo systemctl start postfix
sleep 10
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash
sleep 10
yum install -y gitlab-ce
sleep 10
sudo gitlab-ctl reconfigure



