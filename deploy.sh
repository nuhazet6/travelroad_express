#!/bin/bash
path=$(readlink -e $0)
ssh nuhazet.arkania.es "
  cd $(dirname $path)
  git pull
  npm install
  pm2 restart travelroad --update-env
"
