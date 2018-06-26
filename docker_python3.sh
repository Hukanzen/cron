#!/bin/bash

docker run --rm -it --pid=host -e "TZ=Asia/Tokyo" -v $PWD:/work slackweb python3 /work/$1
