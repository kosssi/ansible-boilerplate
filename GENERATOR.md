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

For configure your `/etc/hosts` change `update_hosts_file` to `True` in `ansible-generator.yml` and execute:

    ansible-playbook -i hosts/localhost ansible-generator.yml -K

Launch your vagrant

    vagrant up

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
