
Vagrant.configure("2") do |config|
  config.vm.box = "generic/centos7"
  config.vm.box_version = "3.4.2"
  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true
  config.vm.synced_folder "./", "/home/vagrant/host"
  
  
end
