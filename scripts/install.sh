#!/bin/bash

echo "Starting deployment..."

chmod -R 755 /usr/share/nginx/html

systemctl restart nginx

echo "Deployment completed."