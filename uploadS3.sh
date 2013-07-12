#!/bin/bash

for file in /home/wadeallen/TransferS3/*; do
if [ -f $file ]; then
	base=`basename $file`
	s3cmd put ${file} s3://allen_home/${base} &&
	rm ${file}
fi
done &&
curl -s \
  -F "token=ZixD3zZy6c5JSJbF3qXZ4SDcBrP7vV" \
  -F "user=XJXTLwwzknKY59RyrBWXdGpdTB4rsw" \
  -F "message=S3 Backup Complete" \
  -F "priority=-1" \
  https://api.pushover.net/1/messages.json
