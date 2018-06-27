#!/bin/bash

mkdir ~/anykeydata

docker build -t slackweb -f slackDockerfile .
