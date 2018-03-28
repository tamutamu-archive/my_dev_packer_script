#!/bin/bash -eu

. settings.conf

CURDIR=$(cd $(dirname $0); pwd)
pushd ${CURDIR}


./base/base.sh
./base/desktop.sh

./apache/apache2.sh

./docker/docker.sh

./java/jdk.sh
./java/maven.sh
./java/gradle.sh

./js/nodejs.sh

./my_dev_settings/install.sh

popd
