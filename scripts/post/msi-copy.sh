#!/usr/bin/env bash

set -oue pipefail

KERNEL_VERSION=$(ls /lib/modules/ | sort | tail -n 1)

echo "KERNEL_VERSION=$KERNEL_VERSION"

git clone https://github.com/BeardOverflow/msi-ec.git
cd msi-ec
make -C /lib/modules/$KERNEL_VERSION/build M=$(pwd) modules
cp /tmp/scripts/msi-ec.ko /lib/modules/$KERNEL_VERSION/extra/
depmod $KERNEL_VERSION
