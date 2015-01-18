# ansible-boilerplate

Create your provisioning.

## Install

    source <(curl -sL http://bit.ly/ansible-boilerplate)

Configure the playbook in the file: `vars/ansible-generator.yml`

## Choice of packages

- apache
- apt
- composer
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

Configure your `/etc/hosts` by default:

    project-name.dev 8.0.0.8

Launch your vagrant

    vagrant up

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
