# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote = true
  end
  config.vm.define :target do |target|
    target.vm.box = "bento/ubuntu-22.04"
    target.vm.network :private_network, ip: "192.168.50.3"  
    target.vm.hostname = "target"
  end
  config.vm.define :control do |control|
    control.vm.box = "bento/ubuntu-22.04"
    control.vm.network :private_network, ip: "192.168.50.2"  
    control.vm.hostname = "control"
    control.vm.provision "shell", path: "control.sh"
  end
end
