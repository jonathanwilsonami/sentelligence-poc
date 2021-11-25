# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "centos/7"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.memory = 8000
    vb.cpus = 2
  end

  #Paths to common provisioning scripts
  install_packages = "/vagrant/vagrant/install-packages.sh"

  config.vm.define "default", primary: true do |default|

    #config.vm.network :forwarded_port, guest: 22, host: 2222, id: 'ssh'

    default.vm.hostname = "sentel"
    default.vm.network :private_network, ip: "192.168.50.100"

    # Run Provisioning for default
    default.vm.provision "shell", inline: install_packages, privileged: true

    default.vm.post_up_message =
    <<~MSG
      Provisioned successfully!
    MSG
  
  end
end
