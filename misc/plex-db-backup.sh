#!/bin/sh

date=`date "+%Y%m%d"`
filesToRemove=`find /pool0/archive/backups/Plex/ -maxdepth 1 -type f -mtime +7 -name '*.gz' -ls`

# Create backup
echo "Copying Plex database..."
rsync -qaPH /pool0/media/plex-config/ /pool0/archive/backups/Plex/plex-config/

# Archive backup
echo "Creating compressed archive..."
cd /pool0/archive/backups/Plex/
tar -czf "$date.plex-config-backup.tar.gz" /pool0/archive/backups/Plex/plex-config
chmod 0444 ./$date.plex-config-backup.tar.gz

# Exclude /mnt/internal/backups/Plex/plex-config from rclone backup
echo "Creating .rclone-ignore in uncompressed folder..."
touch /pool0/archive/backups/Plex/plex-config/.rclone-ignore

# Find and delete database backups older than 7 days
echo "Removing backups older than 7 days"
find /pool0/archive/backups/Plex/ -maxdepth 1 -type f -mtime +7 -name '*.gz' -delete
echo "Files deleted:"
print $filesToRemove

# Log
echo "$date: Backup complete!"
