#!/bin/bash
# inputvar=$INPUT_TEST

echo '::group::Setup build env'
pwd && ls -la && whoami 
# pacman -Syu
# export ISO_URL = "http://mir.archlinux.fr/iso/latest/archlinux-bootstrap-2022.03.01-x86_64.tar.gz"
# wget -q $ISO_URL && mkdir archroot && tar xzf archlinux-bootstrap-2022.03.01-x86_64.tar.gz -C archroot
# ls -la && ls -la archroot
# create custom profile from releng
mkdir custom_profile
cp -r /usr/share/archiso/configs/releng/ custom_profile/
# cat /etc/resolv.conf
# sudo cp /etc/resolv.conf /workspace/archroot/root.x86_64/etc
# echo "Server = http://mir.archlinux.fr/\$repo/os/\$arch" | sudo tee -a /workspace/archroot/root.x86_64/etc/pacman.d/mirrorlist
# command: bash repo/archroot_setup.sh /workspace/archroot
# cd /tmp/local-repo
# build image
# mkarchiso -v -w build -o out profile/
mkarchiso -v custom_profile/
ls -la
echo '::endgroup::'