mkdir -p /etc/chef
mkdir -p /var/chef-solo/cookbooks
mkdir -p /var/chef-solo/site-cookbooks
curl https://github.com/kwappa/centos-setup/raw/master/chef/solo.rb > /etc/chef/solo.rb
