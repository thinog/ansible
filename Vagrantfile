##################################
####### ANSIBLE LINUX HOST #######
##################################

$ansible_config_script = <<-SCRIPT
    export DEBIAN_FRONTEND=noninteractive    
    apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible

    /vagrant/wordpress_com_ansible/set_project.sh
SCRIPT

$vagrant_install_script = <<-SCRIPT
    cd /tmp
    wget -nv https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.deb
    dpkg -i vagrant_2.2.14_x86_64.deb
SCRIPT

$virtualbox_install_script = <<-SCRIPT
    cd /tmp
    wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add - && \
    wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add - && \
    apt-add-repository --yes "deb http://download.virtualbox.org/virtualbox/debian bionic contrib" && \
    apt-get update && \
    apt-get install -y virtualbox-6.1
SCRIPT

Vagrant.configure("2") do |config|   
    config.vm.box = "ubuntu/bionic64"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = 512
        vb.cpus = 1
    end

    config.vm.define "ansible" do |ansible|
        ansible.vm.provision "shell", inline: $ansible_config_script
        # ansible.vm.provision "shell", inline: $vagrant_install_script
        # ansible.vm.provision "shell", inline: $virtualbox_install_script
    end
end