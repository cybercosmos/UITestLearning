#!/usr/bin/env bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied."
    echo "Usage: ./run.sh (AVD Number)"
    exit 1
fi

emulatorNo=$((5554 + $1 * 2))

if [ "$LOGNAME" = "hkoh006" ]
  then
    export PYTHONPATH=../; python3.6 Main.py emulator-5554 ../../apk/apk-$1 ../../apk2/ avd1 --window
   else
    exit 1
fi

