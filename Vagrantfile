Vagrant.configure("2") do |config|
    config.vm.hostname = "CBsql-berkshelf"
    config.vm.box = "centos65"
    config.vm.box_url = "http://www.lyricalsoftware.com/downloads/centos65.box"
    config.omnibus.chef_version = :latest
    config.vm.network :private_network, ip: "33.33.33.10"
    config.vm.boot_timeout = 200
    config.berkshelf.enabled = true

    config.vm.provision :chef_solo do |chef|
        
        chef.run_list = [
          "recipe[CBsql::default]"
        ]
    end
end