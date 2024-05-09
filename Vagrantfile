Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/jammy64"

  if Vagrant.has_plugin?("vagrant-vbguest")
    config.vbguest.auto_update = false
  end  

  config.vm.network "forwarded_port", guest: 8080, host: 8081
  config.vm.provision "shell", path: "scripts/provision.sh"  
end
