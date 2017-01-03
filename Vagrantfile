# -*- mode: ruby -*-
# vi: set ft=ruby :

# assumptions:
# manually confirmed your devel box/vagrant host has virtualbox guest additions matching vm
# only tested on virtualbox

Vagrant.configure("2") do |config|

    #config.vm.box = "centos/6"
    config.vm.box = "bento/centos-7.2"
    config.vm.hostname = "epdemo"
    config.vm.define epdemo

    config.vm.network "private_network", ip: "192.168.3.3"

    config.vm.synced_folder "./vagrant", "/vagrant"
    config.vm.synced_folder "./www", "/var/www", :mount_options => ["dmode=777", "fmode=666"]

    config.vm.post_up_message = "open browser to 192.168.3.3"

end
