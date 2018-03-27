#!/bin/bash -eux

mkdir -p /opt/scripts/packer_build
mv /tmp/scripts /opt/scripts/packer_build/

chmod +x /opt/scripts/packer_build/ -R

pushd /opt/scripts/packer_build/scripts/dev_env
./install.sh
popd