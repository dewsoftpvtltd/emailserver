#!/bin/bash

sudo apt-get update -y && sudo apt-get dist-upgrade -y
sudo hostnamectl set-hostname mail.zeeraksoft.com
cp /etc/hosts /etc/hosts.bak
grep '^;cgi.fix_pathinfo=1' /etc/hosts
sed -i 's,^;cgi.fix_pathinfo=1$,cgi.fix_pathinfo=0,' /etc/hosts


wget https://bitbucket.org/zhb/iredmail/downloads/iRedMail-0.9.7.tar.bz2

tar xvf iRedMail-0.9.7.tar.bz2

cd iRedMail-0.9.7/

chmod +x iRedMail.sh

sudo bash iRedMail.sh
