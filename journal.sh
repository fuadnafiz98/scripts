#!/bin/bash

FILEPATH=/mnt/8AD6BA3FD6BA2AF9/notes/journal/README.md # put your journal file path here 

LAST_MODIFY=$(stat $FILEPATH | grep 'Modify' | awk '{print $2}') 
TODAY=$(date +%F)

# date entry once in a day

if [[ $LAST_MODIFY -eq $TODAY ]]
then
  /usr/local/bin/nvim '+normal Go' -c 'startinsert' $FILEPATH
else
  date +%F%l:%M >> $FILEPATH
  echo -e '\n---\n' >> $FILEPATH
  /usr/local/bin/nvim '+normal Go' -c 'startinsert' $FILEPATH
fi

# date +%Fl%l:%M >> journal.md
# echo '\n---\n' >> journal.md
# /usr/local/bin/nvim '+normal Go' journal.md

