#!/bin/bash

tar -czPf /home/wadeallen/Drobo/site_backups/website_$(date +%Y%m%d).tar.gz /home/wadeallen/Backups/website &&
curl -s \
  -F "token=y5Bn57RtnJRZn6LSsWx9q8cBe5LUzt" \
  -F "user=XJXTLwwzknKY59RyrBWXdGpdTB4rsw" \
  -F "message=Site to Drobo Complete" \
  -F "priority=-1" \
  https://api.pushover.net/1/messages.json
