#!/bin/bash
# Script to update and clean up the system

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Cleaning unnecessary packages..."
sudo apt autoremove -y && sudo apt autoclean

echo "System maintenance done!"
read -p "Press Enter to continue..."

