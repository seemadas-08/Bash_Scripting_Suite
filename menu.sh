#!/bin/bash
# menu.sh - Main control script for the suite

while true; do
    echo "=============================="
    echo "Bash System Maintenance Suite"
    echo "=============================="
    echo "1. Backup Files"
    echo "2. Update & Cleanup System"
    echo "3. Monitor Logs"
    echo "4. Exit"
    echo -n "Choose an option: "
    read choice

    case $choice in
        1) bash backup.sh ;;
        2) bash update_cleanup.sh ;;
        3) bash log_monitor.sh ;;
        4) echo "Exiting..."; break ;;
        *) echo "Invalid choice!" ;;
    esac
    echo ""
done
