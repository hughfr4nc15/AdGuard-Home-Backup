#!/bin/bash

# Crontab entry:
# Run AdGuard Backup
# 0 3 * * * /mnt/backup/AdGuard-Backup.sh

# ---------------
# AdGuard Backup
# ---------------

# Configuration
SOURCE_DIR="/opt/AdGuardHome"
BACKUP_DIR="/mnt/backup/AdGuard-Backup"
LOG_FILE="$BACKUP_DIR/AdGuard-Backup.log"
DATE_FORMAT="+%Y%m%d"
RETENTION_DAYS=7
LOG_RETENTION_DAYS=30

# Create necessary directories if they don't exist
mkdir -p "$BACKUP_DIR"

# Create the backup file
BACKUP_FILE="$BACKUP_DIR/AdGuardHome-$(date "$DATE_FORMAT").tar.gz"
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" . >> "$LOG_FILE" 2>&1

# Clean up old backups
find "$BACKUP_DIR" -maxdepth 1 -type f -name "AdGuardHome-*.tar.gz" -mtime +$RETENTION_DAYS -exec rm -f {} \; >> "$LOG_FILE" 2>&1

# Clean up old log entries (keep only the last 30 days)
awk -v d="$(date -d "$LOG_RETENTION_DAYS days ago" "$DATE_FORMAT")" '$1 >= d' "$LOG_FILE" > "$LOG_FILE.tmp" && mv "$LOG_FILE.tmp" "$LOG_FILE"

# Log the completion
echo "$(date '+%Y-%m-%d %H:%M:%S') - Backup Completed: $BACKUP_FILE" >> "$LOG_FILE"