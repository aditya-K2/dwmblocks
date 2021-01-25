#!/bin/sh

# A dwm_bar function to read the battery level and status

    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    batteryPercentage=$(cat /sys/class/power_supply/BAT0/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT0/status)

        if [ "$STATUS" = "Charging" ]; then
            printf " %s%% %s" "$batteryPercentage" "" 
        elif [ "$batteryPercentage" -le 15 ]; then 
				printf " %s%% %s" "$batteryPercentage" "  "
	    elif [ "$batteryPercentage" -le 30 ]; then 
				printf " %s%% %s" "$batteryPercentage" "  "
	    elif [ "$batteryPercentage" -le 50 ]; then 
				printf " %s%% %s" "$batteryPercentage" 
		elif [ "$batteryPercentage" -le 80 ]; then 
				printf " %s%% %s" "$batteryPercentage" 
		elif [ "$batteryPercentage" -le 100 ]; then 
				printf " %s%% %s" "$batteryPercentage" 
        fi
  


