#!/bin/bash
# log_monitor.sh - Monitor system logs for errors

LOG_FILE="/var/log/syslog"
ALERT_FILE="$HOME/Desktop/log_alerts.txt"

grep -i "error" "$LOG_FILE" > "$ALERT_FILE"

if [ -s "$ALERT_FILE" ]; then
    echo "rrors found! Check $ALERT_FILE"
else
    echo "No errors found in logs."
fi
