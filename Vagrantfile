Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end  

  config.vm.hostname = "jenkins"
  config.vm.network "forwarded_port", guest: 8080, host: 9001
  config.vm.network "private_network", ip: "192.168.56.10"

  config.vm.provision "shell", path: "./scripts/provision.sh"

  config.vm.provider "virtualbox" do |provider|
    provider.memory=8192
    provider.cpus=4
    provider.customize ["modifyvm", :id, "--audio", "none"]   
    provider.customize ["modifyvm", :id, "--vram", "1"] 
  end  
end
