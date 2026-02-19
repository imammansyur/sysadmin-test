#!/bin/bash
# Create a log backup
tar --create --file /home/deploy/log-backup/log-backup-$(date -I).tar.gz /var/log/nginx

# Delete backups older than 7 days
rm -f $(find /home/deploy/log-backup -type f -name 'log-backup-*.tar.gz' -mtime +7)
