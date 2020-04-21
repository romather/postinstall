#!/usr/bin/env bash

if [`getconf LONG_BIT` = "64"]
then
   sudo apt install git nano -y
else
    echo "Script não roda em sistemas 32 bits!"
fi
