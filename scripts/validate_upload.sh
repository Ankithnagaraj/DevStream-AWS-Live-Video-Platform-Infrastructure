#!/bin/bash
# DevStream Upload Validation Script
# Validates file extensions before allowing to staging

UPLOAD_DIR="/srv/devstream/uploads"
STAGING_DIR="/srv/devstream/staging"
LOG_FILE="/srv/devstream/logs/validation.log"
ALLOWED_EXTENSIONS=("mp4" "mkv" "avi" "mov" "ts")

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

log "Starting upload validation scan..."

for upload_dir in "$UPLOAD_DIR"/*/; do
    for file in "$upload_dir"*; do
        [ -f "$file" ] || continue
        ext="${file##*.}"
        ext="${ext,,}"
        valid=false

        for allowed in "${ALLOWED_EXTENSIONS[@]}"; do
            [ "$ext" = "$allowed" ] && valid=true && break
        done

        if $valid; then
            filename=$(basename "$file")
            cp "$file" "$STAGING_DIR/$filename"
            log "VALID: $file -> moved to staging"
        else
            log "REJECTED: $file - extension .$ext not allowed"
            rm -f "$file"
        fi
    done
done

log "Validation complete."
