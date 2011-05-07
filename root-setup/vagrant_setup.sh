# install puppet and chef
gem install puppet
gem install chef

# setup for vagrant
useradd -p `perl -e "print(crypt('vagrant', 'vg'));"` vagrant
echo 'vagrant ALL=(ALL) NOPASSWD:ALL' | tee -a /etc/sudoers
cd /home/vagrant
su - vagrant
mkdir -m 0700 .ssh
curl "https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub" >> .ssh/authorized_keys
chmod 0600 .ssh/authorized_keys
curl "https://github.com/mitchellh/vagrant/raw/master/keys/vagrant" >> .ssh/vagrant
chmod 0600 .ssh/vagrant

echo "================================"
echo "vagrant setup is completed."
echo "================================"
