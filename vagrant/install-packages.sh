#!/bin/bash
yum -y update
yum --assumeyes install epel-release
yum --assumeyes repolist

PKGS=
# Vim editor
PKGS="$PKGS vim-enhanced"

# man pages
PKGS="$PKGS man man-pages bash-doc man-pages-overrides"

# other utilities
PKGS="$PKGS ansible net-tools bind-utils lsof patch tree git tig socat sysstat htop tmux expect zsh iotop nethogs ftop dos2unix unix2dos unzip zip wget"

# Logging utilities
PKGS="$PKGS lnav"

yum --assumeyes install $PKGS


# for updates that are required for bug fixes, etc.
UPDATE_PKGS="openssl kernel"

# required updates
yum --assumeyes update $UPDATE_PKGS

# turn on git color
sudo -u vagrant git config --global color.ui true


exit 0