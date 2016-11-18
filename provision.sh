#!/usr/bin/env bash

if [ ! `which pip` ]; then
  apt-get update
  apt-get -y install python-pip
fi

if [ ! `which ansible` ]; then
  apt-get -y install software-properties-common
  apt-add-repository ppa:ansible/ansible
  apt-get update
  apt-get -y install ansible
  apt-get -y install python-apt
fi

if [ ! -e /home/vagrant/.ansible.cfg ]; then
  sudo cp /vagrant/ansible.cfg /home/vagrant/.ansible.cfg
fi

ansible-playbook -i /vagrant/hosts -l vagrant -c local /vagrant/ansible/vagrant.yml