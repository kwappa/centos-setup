# centos-setup
Setup scripts for CentOS 5.5 on VirtualBox

## Create VM and install CentOS
 (to be written)

### Create VM

### Install CentOS 5.5

### install `curl`
    yum install -y curl

### update yum and install basic packages

#### execute shell script
    curl https://github.com/kwappa/centos-setup/raw/master/root-setup/update_yums.sh | sh
#### restart VM
    shutdown -r now

### Install Guest Additions

#### mount disc image on VM
* Device -> Install Guest Additions

#### mount disc and run installer
    mount -r /dev/cdrom-hdc /media/
    /media/VBoxLinuxAdditions.run

#### unmount disc image

    umount /media/

* right click on CD-ROM ICON below Virtual Machine window
* Remove disc from virtual drive

#### restart VM
    shutdown -r now

### install ruby and rubygems
    curl https://github.com/kwappa/centos-setup/raw/master/root-setup/ruby_setup.sh | sh

### create user `vagrant` and setup puppet, chef, vagrant
    curl https://github.com/kwappa/centos-setup/raw/master/root-setup/vagrant_setup.sh | sh

## chef setup

execute at user `vagrant`

    curl https://github.com/kwappa/centos-setup/raw/master/chef/chef_init.sh | sh
