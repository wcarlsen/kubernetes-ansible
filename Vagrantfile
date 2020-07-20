Vagrant.configure("2") do |config|

  BOX = "ubuntu/bionic64"

  MASTER_CPU = "2" # already at minimum
  MASTER_MEMORY = "1024"

  WORKERS = 1
  WORKER_CPU = "1"
  WORKER_MEMORY = "1024"

#   config.vm.provision "shell", path: "bootstrap.sh"

  config.vm.define "master" do |master|
    master.vm.box = BOX
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "172.42.42.100"
    master.vm.provider "virtualbox" do |vb|
      vb.name = "master"
      vb.memory = MASTER_MEMORY
      vb.cpus = MASTER_CPU
    end
  end


  (1..WORKERS).each do |i|
    config.vm.define "worker#{i}" do |worker|
      worker.vm.box = BOX
      worker.vm.hostname = "worker#{i}"
      worker.vm.network "private_network", ip: "172.42.42.10#{i}"
      worker.vm.provider "virtualbox" do |vb|
        vb.name = "worker#{i}"
        vb.memory = WORKER_MEMORY
        vb.cpus = WORKER_CPU
      end
    end
  end
end