#!/bin/sh
PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin

#----------------------------------------------------
# A simple file backup script.
# Version: 1.0
# Updated: Setp 1, 2016.
# Author: Analog Memory
#----------------------------------------------------

DATE=`date +"%Y%m%d"`
SOURCE_URL=BASE_URL
FILE=FILENAME.EXT

# If directory for current date does not exist, create and backup csv file.
if [ ! -d "${DATE}" ];
then
  mkdir ${DATE}
  wget -nv -O ${DATE}/${FILE} ${SOURCE_URL}${FILE}
  # Optional: Send notification via Notify
  # https://gist.github.com/stecman/e3f8cacc83878aa5ba77
  # notify --title "File Backup" "${DATE}/${FILE}"
fi
