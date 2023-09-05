#!/usr/bin/env bash

set -oue pipefail

cp /tmp/scripts/msi-ec.ko /lib/modules/*/extra/
depmod 6.4.13-200.fc38.x86_64
