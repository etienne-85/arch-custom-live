#!/bin/bash
# shellcheck disable=SC2024

set -o errexit -o pipefail -o nounset

# inputvar=$INPUT_TEST

export HOME=/home/builder

echo '::group::Setup build env'
pwd && ls -la
pacman -Syu
# wget http://mir.archlinux.fr/iso/latest/archlinux-bootstrap-2022.03.01-x86_64.tar.gz
# chmod +x ./repo/archroot_setup.sh
# mkdir /workspace/archroot
# sudo tar xzf archlinux-bootstrap-2021.11.01-x86_64.tar.gz -C /workspace/archroot
# sudo cp /etc/resolv.conf /workspace/archroot/root.x86_64/etc
# echo "Server = http://mir.archlinux.fr/\$repo/os/\$arch" | sudo tee -a /workspace/archroot/root.x86_64/etc/pacman.d/mirrorlist
# command: bash repo/archroot_setup.sh /workspace/archroot
# cd /tmp/local-repo
echo '::endgroup::'