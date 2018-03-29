#!/bin/bash
set -euo pipefail


### Setup
git -C /opt/scripts/ clone https://github.com/tamutamu/my_dev_settings.git

chmod g+rwx /opt/scripts/my_dev_settings/ -R
chown root:dev /opt/scripts/my_dev_settings/ -R



### Execute
pushd /opt/scripts/my_dev_settings/ 
sudo -i -u ${DEV_USER} /opt/scripts/my_dev_settings/all_setup.sh
popd
