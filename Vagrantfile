Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/jammy64"

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end  

  config.vm.network "forwarded_port", guest: 8080, host: 9001
  config.vm.provision "shell", path: "scripts/provision.sh"  

  config.vm.provider "virtualbox" do |provider|
    provider.memory=2048
    provider.cpus=2
  end  
end
