$HOSTNAME = "sharepear.dev"
$BOX = "ubuntu/trusty64"
$IP = "199.199.199.199"
$MEMORY = ENV.has_key?('GP_VM_MEMORY') ? ENV['GP_VM_MEMORY'] : "2048"
$CPUS = ENV.has_key?('GP_VM_CPUS') ? ENV['GP_VM_CPUS'] : "2"
$EXEC_CAP = ENV.has_key?('GP_VM_EXEC_CAP') ? ENV['GP_VM_EXEC_CAP'] : "100"

Vagrant.configure("2") do |config|
  config.vm.hostname = $HOSTNAME
  config.vm.box = $BOX
  config.vm.network :private_network, ip: $IP
  config.ssh.forward_agent = true

  config.vm.synced_folder "../sharepear", "/var/www/sharepear/current", type: "nfs"

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--cpuexecutioncap", $EXEC_CAP]
    v.customize ["modifyvm", :id, "--memory", $MEMORY]
    v.customize ["modifyvm", :id, "--cpus", $CPUS]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.sudo = true
    ansible.playbook = "site.yml"
    ansible.limit = "vagrant"
    ansible.inventory_path = "hosts/vagrant"
    ansible.verbose = "vvvv"
    #ansible.tags = "config"
    #ansible.raw_arguments  = "--vault-password-file=password.txt"
  end
end
