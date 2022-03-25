#!/usr/bin/env bash
echo "entry point reached"

set -o errexit -o pipefail -o nounset

echo '::group::Creating builder user'
useradd --create-home --shell /bin/bash builder
passwd --delete builder
echo '::endgroup::'

pwd && ls -la && whoami
# exec runuser builder --command 'bash -l -c /build.sh'
exec bash -l -c /build.sh