# -*- mode: ruby -*-
# vi:set ft=ruby sw=2 ts=2 sts=2:

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility).

Vagrant.configure("2") do |config|
  
  config.vm.box = "generic/rhel9"
  config.vm.box_check_update = false
  config.vbguest.auto_update = false
  config.vbguest.no_remote = true
  config.ssh.insert_key = false
  config.vm.network "private_network", ip: "192.168.56.200"
  config.vm.network "forwarded_port", guest: 22, host: 2222

# Provision rhel9 server
    
    config.vm.define "rhel9" do |rhel9|
      rhel9.vm.hostname = "server.lab.local"
      rhel9.vm.provision "shell", path: "server.sh"
      rhel9.vm.provider "virtualbox" do |vb|
	      vb.check_guest_additions = false
        vb.memory = "4096"
        vb.cpus = "2"
        vb.name = "rhel9"
      end
    end
end
