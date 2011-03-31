# centos-setup
Setup scripts for CentOS 5.5 on VirtualBox

## Create VM and install CentOS
 (to be written)

### Create VM

### Install CentOS 5.5


### update yum and install baisc packages
    curl https://github.com/kwappa/centos-setup/raw/master/root-setup/update_yums.sh | sh

### Install Guest Additions

### install ruby and create user `vagrant`
    curl https://github.com/kwappa/centos-setup/raw/master/root-setup/vagrant_setup.sh | sh

## chef setup

execute at user `vagrant`

    curl https://github.com/kwappa/centos-setup/raw/master/chef/chef_init.sh | sh
