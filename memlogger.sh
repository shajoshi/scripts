#!/bin/bash -e

if [ $# -eq 0 ]
  then
    echo SLEEPFOR=60
fi

if echo "$1" | grep -qE '^[0-9]+$'; then
    echo SLEEPFOR=$1
fi

echo "      date     time $(free -m | grep total | sed -E 's/^    (.*)/\1/g')"
while true; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') $(free -m | grep Mem: | sed 's/Mem://g')"
    sleep $SLEEPFOR
done

