Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-16.04"

  config.vm.network :private_network, ip: "192.168.33.14"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.gui = false
    vb.memory = 1024
    vb.cpus = 2
  end

  config.vm.provision "shell", :path => "provision.sh"
end
