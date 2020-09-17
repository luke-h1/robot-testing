#!/bin/bash

# simple bash script to remove all of robot framework's logging.
# run outside the dir you want to get rid of the logs
# the below will cd into each sub dir and get rid of all xml, html, png & .log files.




for dir in ./*/
do cd -P "$dir" || continue
    printf %s\\n "$PWD" >&2
    sudo rm -rf *.html *.xml *.log *.png && cd "$OLDPWD" ||
! break; done || ! cd - >&2

echo ""
echo ""
echo ""
echo ""
echo "All logs deleted ! ✅"
