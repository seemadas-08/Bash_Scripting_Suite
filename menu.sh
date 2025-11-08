#!/bin/bash
# Add color for better look
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

while true; do
    clear
    echo -e "${CYAN}==============================="
    echo -e " Bash System Maintenance Suite "
    echo -e "===============================${NC}"
    echo "1. Backup Files"
    echo "2. Update & Cleanup System"
    echo "3. Monitor Logs"
    echo "4. Display System Information"
    echo "5. Exit"
    echo "==============================="
    read -p "Choose an option: " choice

    case $choice in
        1)
            bash backup.sh
            ;;
        2)
            bash update_cleanup.sh
            ;;
        3)
            bash log_monitor.sh
            ;;
        4)
            echo "System Information:"
            uname -a
            echo
            echo "Disk Usage:"
            df -h | head -n 5
            echo
            echo "Memory Usage:"
            free -h
            ;;
        5)
            echo "Exiting..."
            break
            ;;
        *)
            echo "Invalid option. Try again."
            ;;
    esac

    read -p "Press Enter to continue..."
done

