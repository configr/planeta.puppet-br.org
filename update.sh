#!/bin/bash
#
# written by Arthur Furlan <afurlan@configr.com>

export WWW_DIR="/srv/planeta.puppet-br.org/www"
export GIT_DIR="$WWW_DIR/.git" 

## update repository and download feeds
git reset --hard                > /dev/null
git pull --quiet origin master  > /dev/null
planet $WWW_DIR/planet.cf
