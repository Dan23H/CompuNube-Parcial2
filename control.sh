n#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install -y wget unzip software-properties-common

wget https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_linux_amd64.zip
unzip terraform_1.5.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/
rm terraform_1.5.0_linux_amd64.zip

sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

echo "Control-node: Terraform y Ansible instalados correctamente."

