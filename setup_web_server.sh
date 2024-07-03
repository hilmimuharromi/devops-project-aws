#!/bin/bash
exec > >(tee -i /var/log/user-data.log)
exec 2>&1
sudo apt update -y
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
sudo apt install git -y 
mkdir setup-server && cd setup-server
pwd
git clone https://github.com/hilmimuharromi/devops-project-aws.git
cd devops-project-aws/ansible
ansible-playbook -i localhost web_server.yml