
Vagrant.configure("2") do |config|
 config.vm.define "BD" do |n1| 
   n1.vm.box = "centos/7"
   n1.vm.hostname = "BD_jobschedule"
   n1.vm.network "private_network", ip: "192.168.8.22"
   n1.vm.synced_folder "./data", "/home/vagrant/data"
   n1.vm.provision "shell", path: "data/provision_BD.sh"

   n1.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
   end

  end
  config.vm.define "jobscheduler" do |n2|
    n2.vm.box = "centos/7"
    n2.vm.hostname = "SER_jobschedule"
    n2.vm.network "private_network", ip "192.168.8.24"
    n2.vm.synced_folder "./data", "/home/vagrant/data"
    n2.vm.provision "shell", path: "data/provision_SER.sh"

    n2.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
    end
  end
end
