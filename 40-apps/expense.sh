#!/bin/bash
sudo dnf install ansible -y
cd /tmp
sudo git clone http://github.com/Siva3150/expense-ansible.git
cd expense-ansible
ansible-playbook -i inventory.ini mysql.yaml
ansible-playbook -i inventory.ini backend.yaml
ansible-playbook -i inventory.ini frontend.yaml

