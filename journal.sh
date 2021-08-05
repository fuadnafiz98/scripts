#!/bin/bash

FILEPATH=/mnt/8AD6BA3FD6BA2AF9/notes/journal/README.md # put your journal file path here 
VIMPATH=/usr/local/bin/nvim

if [[ ! -f "$FILEPATH" ]]; then
  touch $FILEPATH
fi

LAST_MODIFY=$(stat $FILEPATH | grep 'Modify' | awk '{print $2}') 
TODAY=$(date +%F)

# date entry once in a day

if [[ "$LAST_MODIFY" == "$TODAY" ]]
then
  $VIMPATH '+1' $FILEPATH
  # $VIMPATH '+normal Go' -c 'startinsert' $FILEPATH
else
  DATE=$(date '+%F %l:%M %p')
  sed -i "1s/^/\n---\n\n\n\n/" $FILEPATH
  sed -i "1s/^/$DATE\n/" $FILEPATH
  date '+%F %l:%M %p' >> $FILEPATH
  echo -e '\n---\n' >> $FILEPATH
  $VIMPATH '+5' -c 'startinsert' $FILEPATH
fi
