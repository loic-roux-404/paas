#!/bin/bash

usr=lastico
pass=janVanHelsing69

apt-get update
apt-get install sudo

adduser $usr <<EOF
$pass
$pass





Y
EOF

r=/home/$usr
cp -r /root/vps-init $r
chown -R $usr:$usr $r
usermod -aG sudo $usr

echo "please run echo ssh-copy-id lastico@144.91.67.171 on your machine" && logout
su - $usr

