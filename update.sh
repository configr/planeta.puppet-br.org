#!/bin/bash
#
# written by Arthur Furlan <afurlan@configr.com>

WWW_DIR="/srv/planeta.puppet-br.org/www/"

## update repository and download feeds
git pull --work-tree $WWW_DIR
planet $WWW_DIR/planet.cf
