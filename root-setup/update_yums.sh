# update yum
mkdir -p /root/setup
cd /root/setup
yum -y install yum-utils yum-priorities
curl https://github.com/kwappa/centos-setup/raw/master/etc-yum.repos.d/CentOS-Base.repo > /etc/yum.repos.d/CentOS-Base.repo
yum -y update

# install basic packages
yum install gcc -y
yum install kernel sources -y
yum install kernel-devel -y
yum install bzip2 -y
yum install make -y
yum install sudo -y
