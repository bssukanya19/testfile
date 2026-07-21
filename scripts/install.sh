#!/bin/bash

chmod -R 755 /var/www/html

systemctl restart nginx
chmod +x scripts/install.sh