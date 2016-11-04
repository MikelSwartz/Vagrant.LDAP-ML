# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "bmcgonigle/centos68"

  config.vm.define "ml" do |ml|
          ml.vm.network "public_network", ip: "192.168.50.10"
	  ml.vm.hostname = "ml.og.com"
	  ml.vm.network "forwarded_port", guest: 7999, host: 7999
	  ml.vm.network "forwarded_port", guest: 8000, host: 8000
	  ml.vm.network "forwarded_port", guest: 8001, host: 8001
	  ml.vm.network "forwarded_port", guest: 8003, host: 8003
	  ml.vm.network "forwarded_port", guest: 8010, host: 8010
	  
	  ml.vm.provision "shell",
            path: "ml.provision.sh"
  end

  config.vm.define "ldap" do |ldap|
          ldap.vm.network "public_network", ip: "192.168.50.15"
	  ldap.vm.hostname = "ldap.og.com"
	  ldap.vm.network "forwarded_port", guest: 80, host: 8389

	  ldap.vm.provision "shell", 
   	    path: "ldap.provision.sh"
  end

end
