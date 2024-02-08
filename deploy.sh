#!/bin/bash

ssh nuhazet@nuhazet.arkania.es "
  cd  travelroad_express
  git pull
  npm install
  pm2 restart travelroad_express --update-env
"
