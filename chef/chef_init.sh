mkdir -m 0777 -p /etc/chef
mkdir -m 0777 -p /var/chef-solo/cookbooks
mkdir -m 0777 -p /var/chef-solo/site-cookbooks
curl https://github.com/kwappa/centos-setup/raw/master/chef/solo.rb > /etc/chef/solo.rb
