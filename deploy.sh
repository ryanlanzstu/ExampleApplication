#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2
sudo npm install -g pm2
# Stop pm2 instances
pm2 stop example_app
# Change directory to downloaded application folder 
cd ExampleApplication/
# Install dependencies
npm install
# Start app
pm2 start ./bin/www --name example_app