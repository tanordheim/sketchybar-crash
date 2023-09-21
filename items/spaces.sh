#!/bin/bash

space_icons=("󰈹" "󰅩" "󰻞" "󰃮" "󱔗" "󱏛" "" "" "9" "10" "11" "12" "13" "14" "15")

sid=0
for i in "${!space_icons[@]}"
do
    sid=$(($i+1))
    space=(
        associated_space=$sid
        icon="${space_icons[i]}"
        icon.padding_left=15
        icon.padding_right=15
        icon.highlight_color=$SPACE_HIGHLIGHT_FOREGROUND
        background.color=$SPACE_HIGHLIGHT_BACKGROUND
        background.drawing=off
        label.drawing=off
        script="$PLUGIN_DIR/space.sh"
        click_script="yabai -m space --focus $sid"
    )

    sketchybar --add space space.$sid left --set space.$sid "${space[@]}"
done
