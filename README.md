# ansible-boilerplate

Create your provisioning.

## Install

    git@github.com:kosssi/ansible-boilerplate.git
    cd ansible-boilerplate
    cp vars/ansible-generator.yml.dist vars/ansible-generator.yml

Configure the playbook in the file: `vars/ansible-generator.yml`

## Generate ansible playbook

Command:

    ansible-playbook -i hosts/localhost ansible-generator.yml

Install requirements:

    ansible-galaxy install -r requirements.txt --force

## License

Licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
