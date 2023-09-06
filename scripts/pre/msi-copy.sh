#!/usr/bin/env bash

set -oue pipefail

KERNEL_VERSION=$(sudo find /boot -name "vmlinuz*" -exec file {} \; | sed -e 's/^.* version \(.*\) (.*/\1/' | sort | head -n 1)

echo "KERNEL_VERSION=$KERNEL_VERSION"

cp /tmp/scripts/msi-ec.ko /lib/modules/$KERNEL_VERSION/extra/
depmod $KERNEL_VERSION
