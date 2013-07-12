LOCAL=/home/wadeallen/Backups/website/
WEB=wadechristy@fbcmuncie.org:/home/wadechristy/

rsync -avz \
  --delete \
  --exclude-from '/home/wadeallen/exclude.txt' \
  -e ssh \
  $WEB $LOCAL
curl -s \
  -F "token=B1Bs4c85Y7rMgE8wKV8yCtM7kdoQ6p" \
  -F "user=XJXTLwwzknKY59RyrBWXdGpdTB4rsw" \
  -F "priority=-1" \
  -F "message=Website Backup Complete" \
  https://api.pushover.net/1/messages.json
