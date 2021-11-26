#!/bin/bash
# yum in Rocky Linux is a symbolic link to dnf-3

yum -y update
yum --assumeyes install epel-release
yum --assumeyes repolist

PKGS=
# Vim editor
PKGS="$PKGS vim-enhanced"

# Utilities
PKGS="$PKGS ansible tree git dos2unix unix2dos unzip zip wget"

yum --assumeyes install $PKGS

# turn on git color
sudo -u vagrant git config --global color.ui true

exit 0