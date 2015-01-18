#!/bin/bash

read -p "What is your project name? " name

# create project folder
mkdir ${name}
cd ${name}

# clone boilerplate
git clone git@github.com:kosssi/ansible-boilerplate.git provisioning
cd provisioning

# remove git folder
rm .git -rf

# install dependency
ansible-galaxy install -r requirements.txt --force

# create ansible-generator.yml
cat vars/ansible-generator.yml.dist | sed -e "s/generator/${name}/g" > vars/ansible-generator.yml

# remove ansible-generator.yml.dist
rm vars/ansible-generator.yml.dist

# remove vars/ansible-generator.yml for .gitignore
sed -i '/vars\/ansible-generator.yml/d' .gitignore
