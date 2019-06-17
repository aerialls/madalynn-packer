#!/bin/bash

set -eux

# Enable "madalynn" user sudo without password
echo "madalynn ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/madalynn

# Remove the legacy password
passwd --delete madalynn
