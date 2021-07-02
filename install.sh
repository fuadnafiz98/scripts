#!/bin/bash

## Remove the previous files if exist.
rm -f /usr/bin/journal.sh 2> /dev/null
rm -f /usr/bin/battery.sh 2> /dev/null

## Symlink the files for better access through command line.
sudo ln -s "$(pwd)/journal.sh" /usr/bin/journal.sh
sudo ln -s "$(pwd)/battery.sh" /usr/bin/battery.sh
