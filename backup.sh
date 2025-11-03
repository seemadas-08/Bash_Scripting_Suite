#!/bin/bash
# backup.sh - Backup important files

BACKUP_SRC="$HOME/Documents"
BACKUP_DEST="$HOME/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DEST/backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DEST"
tar -czf "$BACKUP_FILE" "$BACKUP_SRC"

echo "Backup completed: $BACKUP_FILE"
