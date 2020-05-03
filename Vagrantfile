Vagrant.configure("2") do |config|

  config.vm.define "pentest" do |ubuntu|
    ubuntu.vm.box = "bento/ubuntu-18.04"
    ubuntu.vm.box_version = "202003.31.0"
    ubuntu.vm.synced_folder "~/hackthebox.eu/", "/hackthebox.eu/"

    ubuntu.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.cpus = 2
      vb.gui = true
      vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    end

    ubuntu.vm.provision "provision", type: "shell", inline: <<-SCRIPT
      sudo apt-get update 
      sudo apt-get upgrade -y
      sudo apt-get install -y --no-install-recommends ubuntu-desktop firefox
      su - vagrant -c "/vagrant/scripts/install/install-nix.sh"
      su - vagrant -c "make -C /vagrant/ install-dotfiles"
      su - vagrant -c "make -C /vagrant/ nix-pen-env"
    SCRIPT
  end

  ##########
  # Test VMs
  ##########
  config.vm.define "test-ubuntu18.04" do |ubuntu|
    ubuntu.vm.box = "bento/ubuntu-18.04"
    ubuntu.vm.box_version = "202003.31.0"

    ubuntu.vm.provision "nix-and-dotfiles", type: "shell", inline: <<-SCRIPT
      su - vagrant -c "/vagrant/scripts/install/install-nix.sh"
      su - vagrant -c "make -C /vagrant/ install-dotfiles"
      su - vagrant -c "make -C /vagrant/ delete-dotfiles"
      su - vagrant -c "/vagrant/scripts/delete/delete-nix.sh"
    SCRIPT
  end
end