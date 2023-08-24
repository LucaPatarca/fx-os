#!/usr/bin/env bash

set -oue pipefail

dnf install kernel-devel
cd /tmp
git clone https://github.com/BeardOverflow/msi-ec.git
cd msi-ec
make
make install
