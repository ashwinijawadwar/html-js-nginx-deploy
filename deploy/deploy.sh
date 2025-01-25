#!/bin/bash

# Variables
ZIP_FILE="build/html-js.zip"
DEST_DIR="/var/www/html"
NGINX_CONFIG="/etc/nginx/sites-available/default"

# Unzip to destination
sudo unzip -o $ZIP_FILE -d $DEST_DIR

# Update NGINX configuration
sudo cp nginx.conf $NGINX_CONFIG
sudo systemctl restart nginx

echo "Deployment completed!"
