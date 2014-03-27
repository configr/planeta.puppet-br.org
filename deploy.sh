#!/bin/bash
#
# written by Arthur Furlan <afurlan@configr.com>

GIT_REP="https://github.com/configr/planeta.puppet-br.org.git"
GIT_DIR="/srv/planeta.puppet-br.org/tmp/puppetbr-github-$RANDOM"
WWW_DIR="/srv/planeta.puppet-br.org/www/"

git clone $GIT_REP $GIT_DIR &> /dev/null
rm -rf "$GIT_REP/.git"
rsync -aH "$GIT_DIR/" "$WWW_DIR/"

rm -rf "$GIT_DIR"
