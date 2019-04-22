#!/bin/bash
# Ansible tower cli quick install

sudo yum install python-pip
sudo pip install ansible-tower-cli

tower-cli  --help || exit 1