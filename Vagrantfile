IMAGE_NAME = "schnell18/bullseye64"
IMAGE_VERSION = "11.3"


Vagrant.configure("2") do |config|
    config.ssh.insert_key = false
    config.vm.box_check_update = false
    config.vm.synced_folder ".", "/work", automount: true, SharedFoldersEnableSymlinksCreate: false

    # take care of /etc/hosts in both host and guest
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
    config.hostmanager.manage_guest = true


    # ip address of hostonly vm should fall into 192.168.56/21
    # according to https://www.virtualbox.org/manual/usermanual.html
    # we choose 192.168.60.10 for 
    config.vm.define "coderepo" do |coderepo|
        coderepo.vm.box = IMAGE_NAME
        coderepo.vm.box_version = IMAGE_VERSION
        coderepo.vm.network "private_network", ip: "192.168.60.10"
        coderepo.vm.hostname = "code"
        coderepo.vm.provision :hostmanager
        coderepo.hostmanager.aliases = %w(code.tinkerit.vn)
        coderepo.vm.provider "virtualbox" do |v|
            v.name = "coderepo"
            v.memory = 2048
            v.cpus = 4
            v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        end
        coderepo.vm.provision "ansible" do |ansible|
            ansible.playbook = "provision/playbook-coderepo.yml"
        end
    end

    config.vm.define "artifact" do |artifact|
        artifact.vm.box = IMAGE_NAME
        artifact.vm.box_version = IMAGE_VERSION
        artifact.vm.network "private_network", ip: "192.168.60.20"
        artifact.vm.hostname = "artifact"
        artifact.vm.provision :hostmanager
        artifact.hostmanager.aliases = %w(artifact.tinkerit.vn)
        artifact.vm.provider "virtualbox" do |v|
            v.name = "artifact"
            v.memory = 2048
            v.cpus = 2
            v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        end
        artifact.vm.provision "ansible" do |ansible|
            ansible.playbook = "provision/playbook-artifact.yml"
        end
    end

end

# vim:set nu ai expandtab sw=4 ts=4 syntax=ruby:
