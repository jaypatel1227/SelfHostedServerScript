# Save this as backup.sh
# Set your paths
BACKUP_FOLDER="/home/jay/Minecraft/Backups/"
WORLD_FOLDER="/home/jay/Mincraft/Server_Files/world"

# Create the backup folder if it doesn't exist
mkdir -p "$BACKUP_FOLDER"

# Generate a timestamp for the backup
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
BACKUP_NAME="world_backup_$TIMESTAMP"

# Create the backup
cp -r "$WORLD_FOLDER" "$BACKUP_FOLDER/$BACKUP_NAME"

# Keep only the three most recent backups
ls -t "$BACKUP_FOLDER" | tail -n +4 | xargs rm -rf

echo "Backup completed: $BACKUP_NAME"
