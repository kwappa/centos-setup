cd ~
sudo mkdir -m 0777 -p /etc/chef
sudo mkdir -p /var/chef-solo/cookbooks
sudo mkdir -p /var/chef-solo/site-cookbooks
sudo chmod -R 0777 /var/chef-solo
curl https://github.com/kwappa/centos-setup/raw/master/chef/solo.rb > /etc/chef/solo.rb
git clone git://github.com/opscode/chef-repo.git
