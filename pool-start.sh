#!/bin/sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

echo ""
echo "Raven Pool Starting..."
echo ""
cd /app

source ~/.bashrc
source /etc/os-release

## who am i? ##
SCRIPTNAME="$(readlink -f ${BASH_SOURCE[0]})"
BASEDIR="/app"

## Okay, print it ##
echo "Script name : $SCRIPTNAME"
echo "Current working dir : $PWD"
echo "Script location path (dir) : $BASEDIR"
echo ""
<<<<<<< HEAD
sudo setcap 'cap_net_bind_service=+ep' ~/.nvm/versions/node/v8.17.0/bin/node
=======
sudo setcap 'cap_net_bind_service=+ep' ~/.nvm/versions/node/v15.8.0/bin/node
>>>>>>> eae15c02d47c254942ea95eb949ebc90de7b006e

node init.js

renice -n -18 -p $(pidof node)
renice -n -18 -p $(pidof nodejs)

exit 0
