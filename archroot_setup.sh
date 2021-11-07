# wget http://mir.archlinux.fr/iso/2021.11.01/archlinux-bootstrap-2021.11.01-x86_64.tar.gz
CHROOT_DIR=$1
cd $CHROOT_DIR/root.x86_64/
#sudo cp /etc/resolv.conf etc
#echo "Server = http://mir.archlinux.fr/\$repo/os/\$arch" | sudo tee -a etc/pacman.d/mirrorlist
sudo mount --bind $CHROOT_DIR/root.x86_64 $CHROOT_DIR/root.x86_64
sudo mount -t proc /proc proc
sudo mount --make-rslave --rbind /sys sys
sudo mount --make-rslave --rbind /dev dev
sudo chroot $CHROOT_DIR/root.x86_64 /bin/bash
