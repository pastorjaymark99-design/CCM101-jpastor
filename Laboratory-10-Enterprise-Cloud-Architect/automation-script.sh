#!/bin/bash
# backup.sh - Backs up MySQL database and WordPress files with timestamp

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_DIR="/home/jpastor/backups"
DB_CONTAINER="wp_mysql"
DB_NAME="wordpress"
DB_USER="wpuser"
DB_PASSWORD="jmps2911"

mkdir -p "$BACKUP_DIR"

# Backup the MySQL database
docker exec "$DB_CONTAINER" sh -c "exec mysqldump --no-tablespaces -u $DB_USER -p$DB_PASSWORD $DB_NAME" > "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"

# Backup the WordPress volume (files)
docker run --rm \
  -v wordpress-stack_wordpress_data:/data \
  -v "$BACKUP_DIR":/backup \
  alpine tar czf /backup/wordpress_files_$TIMESTAMP.tar.gz -C /data .

echo "Backup completed at $TIMESTAMP" >> "$BACKUP_DIR/backup.log"
