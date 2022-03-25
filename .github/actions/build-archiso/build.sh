#!/bin/bash
# shellcheck disable=SC2024

set -o errexit -o pipefail -o nounset

# inputvar=$INPUT_TEST

# export HOME=/home/builder

echo '::group::Setup build env'
pwd && ls -la && whoami 
# pacman -Syu
wget -q http://mir.archlinux.fr/iso/latest/archlinux-bootstrap-2022.03.01-x86_64.tar.gz
mkdir archroot
sudo tar xzf archlinux-bootstrap-2022.03.01-x86_64.tar.gz -C archroot
ls -la && ls -la archroot && cat /etc/resolv.conf
# sudo cp /etc/resolv.conf /workspace/archroot/root.x86_64/etc
# echo "Server = http://mir.archlinux.fr/\$repo/os/\$arch" | sudo tee -a /workspace/archroot/root.x86_64/etc/pacman.d/mirrorlist
# command: bash repo/archroot_setup.sh /workspace/archroot
# cd /tmp/local-repo
echo '::endgroup::'