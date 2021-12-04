#!/bin/bash

# RPEL
yum -y update
yum -y install epel-release
yum -y repolist
yum -y update kernel

# Vim editor
PKGS="$PKGS vim-enhanced"

# Ansible
PKGS="$PKGS ansible"

yum -y install $PKGS

# turn on git color
sudo -u vagrant git config --global color.ui true

exit 0