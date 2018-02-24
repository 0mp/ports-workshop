Vagrant.configure("2") do |config|
  config.vm.define "workshop-machine" do |host|
    host.vm.box = "http://freebsd.waw.hackerspace.pl/box.box"
    host.vm.hostname = "workshop-machine"
    host.ssh.shell = "sh"

    host.vm.synced_folder ".", "/vagrant", type: "rsync"

    host.vm.provider "virtualbox" do |vb|
      #vb.gui = true
      vb.name = "workshop-machine"
      vb.cpus = 2
      vb.memory = 2048
    end
  end
end

# vim: filetype=ruby softtabstop=2 shiftwidth=2 tabstop=2 expandtab:
