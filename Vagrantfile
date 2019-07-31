Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.hostname = 'salt-test-box'

  # Give the machine 2048MB of RAM.
  # This assumes you're using the virtualbox provider, see
  # https://www.vagrantup.com/docs/providers/ for information on the
  # other providers.
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.synced_folder "salt", "/srv/salt", :nfs => true
  # required for nfs shared folder
  config.vm.network "private_network", type: "dhcp"

  config.vm.provision :salt do |salt|
    salt.install_type = "stable"
    salt.masterless = true
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
    salt.verbose = true
    salt.log_level = "info"
    salt.colorize = true
  end
end
