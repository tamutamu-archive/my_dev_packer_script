#!/bin/bash


### Git clone packer scripts
pushd /opt/scripts/
git clone https://github.com/tamutamu/my_dev_packer_script.git
popd



### TimeZone
timedatectl set-timezone Asia/Tokyo


### Lang is Japanese.
apt -y install language-pack-ja
update-locale LANG=ja_JP.UTF-8



### Install build-essential.
apt -y install build-essential




### For vagrant share folder
apt -y install cifs-utils



### Use vim in visudo.
update-alternatives --set editor /usr/bin/vim.basic



### Config ip setting.
cat << EOT >> /etc/sysctl.conf


net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1

net.ipv4.conf.eth0.arp_ignore = 1
net.ipv4.conf.eth0.arp_announce = 2
EOT