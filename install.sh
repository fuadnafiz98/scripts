#!/bin/bash
rm -f /usr/bin/journal.sh 2> /dev/null
sudo ln -s "$(pwd)/journal.sh" /usr/bin/journal.sh
