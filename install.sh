#!/bin/bash

## Remove the previous files if exist.
sudo rm -f /usr/bin/journal.sh 2> /dev/null
sudo rm -f /usr/bin/battery.sh 2> /dev/null
sudo rm -f /usr/bin/ocean 2> /dev/null

## Symlink the files for better access through command line.
sudo ln -s "$(pwd)/journal.sh" /usr/bin/journal.sh
sudo ln -s "$(pwd)/battery.sh" /usr/bin/battery.sh
sudo ln -s "$(pwd)/ocean" /usr/bin/ocean
