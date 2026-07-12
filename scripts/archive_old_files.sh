#!/bin/bash
# Compress and archive files older than 7 days from staging

STAGING_DIR="/srv/devstream/staging"
ARCHIVE_DIR="/mnt/devstream-secure/archives"
LOG_FILE="/srv/devstream/logs/archive.log"
DATE=$(date '+%Y%m%d_%H%M%S')

mkdir -p "$ARCHIVE_DIR"

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

# Find and compress files older than 7 days
find "$STAGING_DIR" -type f -mtime +7 | while read -r file; do
    filename=$(basename "$file")
    tar -czf "$ARCHIVE_DIR/${filename}_${DATE}.tar.gz" "$file" && rm -f "$file"
    log "Archived: $filename"
done

log "Archive complete"
