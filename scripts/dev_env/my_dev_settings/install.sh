#!/bin/bash
set -euo pipefail


git -C /opt/scripts/ clone https://github.com/tamutamu/my_dev_settings.git

chmod g+rwx /opt/scripts/my_dev_settings/ -R
chown root:dev /opt/scripts/my_dev_settings/ -R
