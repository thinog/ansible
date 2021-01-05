##################################
####### ANSIBLE LINUX HOST #######
##################################

$ansible_install_script = <<-SCRIPT
    apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible
SCRIPT

Vagrant.configure("2") do |config|   
    config.vm.box = "ubuntu/bionic64"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = 512
        vb.cpus = 1
    end

    config.vm.define "ansible" do |ansible|
        ansible.vm.provision "shell", inline: $ansible_install_script
    end
end