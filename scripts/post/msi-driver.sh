#!/usr/bin/env bash

set -oue pipefail

KERNEL_VERSION=$(ls /lib/modules/ | sort | tail -n 1)

echo "KERNEL_VERSION=$KERNEL_VERSION"

git clone https://github.com/BeardOverflow/msi-ec.git
cd msi-ec
ln -s /usr/bin/ld.bfd /usr/bin/ld
make -C /lib/modules/$KERNEL_VERSION/build M=$(pwd) modules
cp msi-ec.ko /lib/modules/$KERNEL_VERSION/extra/
depmod $KERNEL_VERSION
