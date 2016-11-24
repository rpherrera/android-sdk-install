# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
    config.vm.box = 'ubuntu/xenial64'
    config.vm.provider 'virtualbox' do |vbox|
        vbox.customize ['modifyvm', :id, '--ioapic', 'on']
        vbox.cpus = 2
        vbox.memory = 2048
    end
    config.vm.boot_timeout = 600
    config.vm.provision "shell", path: "provision.sh"
end
