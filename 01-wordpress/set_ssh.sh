#!/bin/bash

mkdir -p /home/vagrant/wordpress
cp /vagrant/01-wordpress/.vagrant/machines/wordpress/virtualbox/private_key /home/vagrant/wordpress/
chmod 600 /home/vagrant/wordpress/private_key