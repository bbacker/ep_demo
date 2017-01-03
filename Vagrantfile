# -*- mode: ruby -*-
# vi: set ft=ruby :

# assumptions:
# manually confirmed your devel box/vagrant host has virtualbox guest additions matching vm
# only tested on virtualbox

Vagrant.configure("2") do |config|

    config.vm.box = "bento/centos-7.2"
    config.vm.hostname = "epdemo"
    config.vm.define "epdemo"

    config.vm.network "forwarded_port", guest: 80, host: 8080

    config.vm.network "public_network", ip: "192.168.3.3"
#    config.vm.network "public_network", auto_config: false

    # manual ip
#    config.vm.provision "shell",
#      run: "always",
#      inline: "ifconfig eth1 192.168.3.3 netmask 255.255.255.0 up"


    config.vm.synced_folder "./vagrant", "/vagrant"
    config.vm.synced_folder "./shell", "/shell"
    config.vm.synced_folder "./www", "/var/www", :mount_options => ["dmode=777", "fmode=666"]

    config.vm.post_up_message = "open browser on vagrant host to 192.168.3.3:8080"

    config.vm.provision :shell, :path => "shell/install_nginx.sh"

end
