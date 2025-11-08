#!/bin/bash
# Add color for better look
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

while true; do
    clear
    echo -e "${CYAN}==============================="
    echo -e " Bash System Maintenance Suite "
    echo -e "===============================${NC}"
    echo "1. Backup Files"
    echo "2. Update & Cleanup System"
    echo "3. Monitor Logs"
    echo "4. Exit"
    echo "5. Display System Information"
    echo "==============================="
    read -p "Choose an option: " choice

    case $choice in
        1)
            echo "Backing up files..."
            BACKUP_DIR="$HOME/Backups"
            mkdir -p "$BACKUP_DIR"
            FILENAME="backup_$(date +%F_%H-%M-%S).tar.gz"
            tar -czf "$BACKUP_DIR/$FILENAME" $HOME/Documents $HOME/Desktop 2>/dev/null
            echo "Backup completed: $BACKUP_DIR/$FILENAME"
            ;;
        2)
            echo "Updating system..."
            sudo apt update && sudo apt upgrade -y
            echo "Cleaning unnecessary packages..."
            sudo apt autoremove -y && sudo apt autoclean
            echo "System maintenance done!"
            ;;
        3)
            echo "Monitoring logs..."
            LOG_FILE="/var/log/syslog"
            if [ -f "$LOG_FILE" ]; then
                grep -i "error" "$LOG_FILE" > "$HOME/Backups/log_report_$(date +%F).txt"
                echo "Error log saved to $HOME/Backups/log_report_$(date +%F).txt"
            else
                echo "Log file not found."
            fi
            ;;
        4)
            echo "Exiting..."
            break
            ;;
        5)
            echo "System Information:"
            uname -a
            echo
            echo "Disk Usage:"
            df -h | head -n 5
            echo
            echo "Memory Usage:"
            free -h
            ;;
        *)
            echo "Invalid option. Try again."
            ;;
    esac

    read -p "Press Enter to continue..."
done

