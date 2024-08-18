#!/bin/bash

# Function to check battery status and send notification

check_battery() {
    # Get the battery percentage using acpi
    battery_status=$(acpi -b)
    battery_percentage=$(echo "$battery_status" | grep -oP '\d+(?=%)')

    # Check if battery percentage is below 20%
    if [ "$battery_percentage" -lt 20 ]; then
        # Send a notification
        notify-send -u critical "Battery Warning" "Battery level is below 20%!"
    fi
}

while true; do
    check_battery
    sleep 300 # Sleep for 5 minutes
done
