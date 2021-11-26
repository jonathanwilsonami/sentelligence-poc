# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # Why Rocky Linux 8? Rocky Linux is a direct clone of Linux Enterprise 8 so it follows the Enterprise 8 product. Centos and Fedora are
  # development products now. This is a good distro to use for now as it gives a good reprsentation of Linux Enterprise 8 (RHEL). In the 
  # future if the project grows and gets bigger we may switch to RHEL but for now Rock Linux is great.  
  config.vm.box = "rockylinux/8"
  config.vm.box_version = "4.0.0"

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

    default.vm.hostname = "sentel"
    #For testing the web
    default.vm.network :private_network, ip: "192.168.50.100"
    #config.vm.network :forwarded_port, guest: 80, host: 8080
    
    # Run Provisioning for default
    default.vm.provision "shell", inline: install_packages, privileged: true

    default.vm.post_up_message =
    <<~MSG
      Provisioned successfully!
    MSG
  
  end
end
