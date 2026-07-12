#!/bin/bash
# DevStream S3 Sync Script — uploads validated files to S3 staging bucket
S3_BUCKET="s3://devstream-upload-staging-3108"    # ← Replace in Phase 4
STAGING_DIR="/srv/devstream/staging"
LOG_FILE="/srv/devstream/logs/s3_sync.log"

log() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"; }

log "Starting S3 sync..."
aws s3 sync "$STAGING_DIR/" "$S3_BUCKET/uploads/" \
    --exclude "*.tmp" \
    --delete \
    --sse AES256 2>> "$LOG_FILE"

if [ $? -eq 0 ]; then
    log "S3 sync SUCCESS"
else
    log "S3 sync FAILED — check logs"
fi
