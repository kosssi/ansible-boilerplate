# ansible-boilerplate

Create your provisioning.

## Install

    git clone git@github.com:kosssi/ansible-boilerplate.git
    cd ansible-boilerplate
    ansible-galaxy install -r requirements.txt --force
    cp vars/ansible-generator.yml.dist vars/ansible-generator.yml

Configure the playbook in the file: `vars/ansible-generator.yml`

## Choice of packages

- apache
- apt
- fail2ban
- iptables
- mysql
- php
- ssh

## Generate ansible playbook

Command:

    ansible-playbook -i hosts/localhost ansible-generator.yml

Install requirements:

    ansible-galaxy install -r requirements.txt --force

Launch your vagrant

    vagrant up

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
