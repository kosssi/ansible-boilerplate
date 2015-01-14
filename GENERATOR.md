# ansible-boilerplate

Create your provisioning.

## Install

    git@github.com:kosssi/ansible-boilerplate.git
    cd ansible-boilerplate
    cp vars/ansible-generator.yml.dist vars/ansible-generator.yml
    ansible-galaxy install -r requirements.txt --force

Configure the playbook in the file: `vars/ansible-generator.yml`

## Generate ansible playbook

    ansible-playbook -i hosts/localhost ansible-generator.yml

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
