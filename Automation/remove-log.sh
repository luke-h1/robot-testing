#!/bin/bash

# simple bash script to remove all of robot framework's logging.
# run inside the dir you want to get rid of the logs
# the below will cd into each sub dir and get rid of all xml, html & .log files.


echo "Do Not run this script blindly"
echo "you'll probably regret it"
echo "this script will delete all robot fw"
echo "logs. Make sure you do not need them"
echo "before running"
sleep 2

CONTINUE=false
echo ""
echo "Have you read through the script you're about to run and "
echo "understood that it will delete all of your test logs (y/n) ? "
read -r response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "Deleting all logging now... "
    CONTINUE=true
fi

if ! $CONTINUE; then
    echo "Please go read the script, it only takes a few minutes 💻"
    exit
fi


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