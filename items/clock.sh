#!/bin/bash

sketchybar --add item  clock right \
           --set clock \
                 update_freq=10 \
                 label.padding_left=8 \
                 label.padding_right=8 \
                 script="$PLUGIN_DIR/clock.sh"
