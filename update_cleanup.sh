#!/bin/bash
# update_cleanup.sh - System update and cleanup

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Cleaning unnecessary packages..."
sudo apt autoremove -y && sudo apt clean

echo "System maintenance done!"
