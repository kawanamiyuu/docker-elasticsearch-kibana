# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.box = "chef/centos-6.5"

	config.vm.network "private_network", ip: "192.168.33.10"

	config.vm.provider "virtualbox" do |vb|
		vb.customize ["modifyvm", :id, "--memory", "1024"]
	end

	config.vm.provision :shell, inline: <<-EOT

# install docker
rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum --enablerepo=epel install -y docker-io

# start docker
service docker start
chkconfig docker on

# add vagrant user to docker group
gpasswd -a vagrant docker

# build & run reciever-container
sh /vagrant/reciever/docker-build.sh
sh /vagrant/reciever/docker-run.sh

# build & run sender-container
sh /vagrant/sender/docker-build.sh
sh /vagrant/sender/docker-run.sh

	EOT

end
