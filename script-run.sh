#!/bin/bash

if [ "$(uname)" == "Darwin" ]; then
    echo "System: OSX"
    source $(brew --prefix nvm)/nvm.sh
    nvm use
elif [[ $OSTYPE == "linux-gnueabihf" ]]; then
    # Do something under Mac OS X platform
    echo "System: Raspberry Pi 2"
elif [ "$(uname)" == "Linux" ]; then
    echo "System: Linux"
fi

PORT=7080 \
IS_LOCAL=1 \
iojs -harmony_arrow_functions  app.server.js
