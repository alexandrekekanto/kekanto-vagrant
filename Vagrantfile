# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  
  # SO box
  config.vm.box = "hashicorp/precise32"

  # setting port
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # setting ip for access in machine real
  # example.: configure hosts do windows for search in virtual
  config.vm.network "private_network", ip: "192.168.50.4"

  # synced folder
  config.vm.synced_folder "projetos/", "/home/vagrant"

  # execute shellscript
  config.vm.provision "shell", path: "install.sh"
end