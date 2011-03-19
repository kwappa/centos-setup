# update yum
mkdir -p /root/setup
cd /root/setup
yum -y install yum-utils yum-priorities
curl https://github.com/kwappa/centos-setup/raw/master/etc-yum.repos.d/CentOS-Base.repo > /etc/yum.repos.d/CentOS-Base.repo
yum -y update

# install dependeicies of ruby
yum -y install readline-devel curl-devel openssl-devel zlib-devel autoconf ncurses-devel pkgconfig gettext-devel glib-devel mono-devel libxml2-devel

# add repository `rpmforge`
wget -nc http://dag.wieers.com/rpm/packages/RPM-GPG-KEY.dag.txt
rpm --import RPM-GPG-KEY.dag.txt
rm -f RPM-GPG-KEY.dag.txt
wget -nc http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el5.rf.x86_64.rpm
rpm -ivh rpmforge-release-0.5.2-2.el5.rf.x86_64.rpm
yum -y update rpmforge-release

# install git
yum -y install git

# install ruby
RUBY_MAJOR_VERSION='1.9'
RUBY_VERSION='1.9.2'
RUBY_PATCH_LEVEL='180'
cd /usr/local/src
wget -N ftp://ftp.ruby-lang.org/pub/ruby/${RUBY_MAJOR_VERSION}/ruby-${RUBY_VERSION}-p${RUBY_PATCH_LEVEL}.tar.gz
tar zxf ruby-${RUBY_VERSION}-p${RUBY_PATCH_LEVEL}.tar.gz
cd ruby-${RUBY_VERSION}-p${RUBY_PATCH_LEVEL}
./configure
make
make install
ruby --version

# update rubygems
gem install rubygems-update
update_rubygems
gem -v
gem update

# install sprinkle
gem install sprinkle
