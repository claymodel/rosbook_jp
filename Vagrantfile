# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "public_network"
  config.vm.synced_folder ".", "/vagrant_data"

  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 4096]
  end

  config.vm.provision :shell, :path => "install.sh"

end
