#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)

docker run --rm -i --pid=host -e "TZ=Asia/Tokyo" -v $SCRIPT_DIR:/work -v $HOME/anykeydata:/anykeydata slackweb python3 /work/$1
