#!/bin/sh

echo ""
echo "Raven Pool Starting..."
echo ""

source ~/.bashrc
source /etc/os-release

## who am i? ##
SCRIPTNAME="$(readlink -f ${BASH_SOURCE[0]})"
BASEDIR="$(dirname $SCRIPTNAME)"

## Okay, print it ##
echo "Script name : $SCRIPTNAME"
echo "Current working dir : $PWD"
echo "Script location path (dir) : $BASEDIR"
echo ""
sudo setcap 'cap_net_bind_service=+ep' ~/.nvm/versions/node/v8.17.0/bin/node


node init.js

renice -n -18 -p $(pidof node)
renice -n -18 -p $(pidof nodejs)

exit 0
