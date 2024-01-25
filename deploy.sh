#!/bin/bash
path=$(readlink -e $0)
ssh arkania "
  cd $(dirname $path)
  git pull
  npm install
  pm2 restart travelroad --update-env
"
