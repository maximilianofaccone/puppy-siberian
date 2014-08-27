#!/bin/bash
# echo $[($RANDOM % ($[200 - 100] + 1)) + 100]
min=1
max=69
no=$[($RANDOM % ($[$max - $min] + 1)) + $min]
cp ~/.conky/analog_clock/theme/clock_face${no}.png ~/.conky/analog_clock/theme/clock_face.png
exit
