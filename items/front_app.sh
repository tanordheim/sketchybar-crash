#!/bin/bash

sketchybar --add item front_app center \
           --set front_app \
                 background.color=$FRONT_APP_BACKGROUND \
                 background.height=26 \
                 background.corner_radius=10 \
                 label.color=$FRONT_APP_FOREGROUND \
                 label.padding_left=10 \
                 label.padding_right=10 \
                 icon.drawing=off \
                 script="$PLUGIN_DIR/front_app.sh" \
           --subscribe front_app front_app_switched
