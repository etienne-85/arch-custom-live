FROM archlinux:base

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm --needed --overwrite '*' \
      openssh sudo \
      git fakeroot binutils gcc awk binutils xz \
      libarchive bzip2 coreutils file findutils \
      gettext grep gzip sed ncurses util-linux wget

COPY entrypoint.sh /entrypoint.sh
COPY build.sh /build.sh

ENTRYPOINT ["/entrypoint.sh"]