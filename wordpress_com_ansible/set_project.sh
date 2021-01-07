#!/bin/bash

mkdir -p /home/vagrant/ansible

cp /vagrant/wordpress_com_ansible/.vagrant/machines/wordpress/virtualbox/private_key /home/vagrant/ansible/wordpress_private_key
chmod 600 /home/vagrant/ansible/wordpress_private_key

cp /vagrant/wordpress_com_ansible/.vagrant/machines/mysql/virtualbox/private_key /home/vagrant/ansible/mysql_private_key
chmod 600 /home/vagrant/ansible/mysql_private_key

ansible-galaxy collection install community.mysql