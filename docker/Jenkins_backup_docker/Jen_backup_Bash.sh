#!/bin/bash
# -----------------------------------------------------------------------------
# Jenkins Backup Script
## Description : Safely backup Jenkins configuration and data files.
## Author      : Bhavya Shree 
## Version     : 1.0
## -----------------------------------------------------------------------------
#
## ================================
##        CONFIGURATION
## ================================
JENKINS_HOME="/var/lib/jenkins"
BACKUP_ROOT="/backup/jenkins"
#
LOG_FILE="/var/log/jenkins_backup.log"
RETENTION_DAYS=7
#
## ================================
##        SANITY CHECKS
## ================================
if [ ! -d "$JENKINS_HOME" ]; then
  echo "$(date '+%F %T') [ERROR] Jenkins home directory not found at $JENKINS_HOME" | tee -a "$LOG_FILE"
    exit 1
    fi

    if [ ! -d "$BACKUP_ROOT" ]; then
      mkdir -p "$BACKUP_ROOT" || {
          echo "$(date '+%F %T') [ERROR] Failed to create backup directory $BACKUP_ROOT" | tee -a "$LOG_FILE"
              exit 1
                }
                fi

#                # ================================
#                #        VARIABLES
#                # ================================
                TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
                BACKUP_FILE="$BACKUP_ROOT/jenkins_backup_$TIMESTAMP.tar.gz"
#
#                # ================================
#                #        BACKUP PROCESS
#                # ================================
                echo "$(date '+%F %T') [INFO] Starting Jenkins backup..." | tee -a "$LOG_FILE"
#
#                # Optionally stop Jenkins during backup for consistency
#                # systemctl stop jenkins
#
                tar -czf "$BACKUP_FILE" \
                  "$JENKINS_HOME" \
                   /var/lib/jenkins/jobs \
                    /var/lib/jenkins/*.xml
                      2>>"$LOG_FILE"

                      if [ $? -eq 0 ]; then
                        echo "$(date '+%F %T') [INFO] Backup created successfully: $BACKUP_FILE" | tee -a "$LOG_FILE"
                        else
                          echo "$(date '+%F %T') [ERROR] Backup failed!" | tee -a "$LOG_FILE"
                            exit 1
                            fi

                            # Restart Jenkins if it was stopped
                            # systemctl start jenkins

                            # ================================
#                            #        RETENTION POLICY
#                            # ================================
                            find "$BACKUP_ROOT" -type f -name "jenkins_backup_.tar.gz" -mtime +$RETENTION_DAYS -exec rm -f {} \;
                            echo "$(date '+%F %T') [INFO] Old backups older than $RETENTION_DAYS days removed." | tee -a "$LOG_FILE"
#
                            echo "$(date '+%F %T') [INFO] Jenkins backup completed successfully." | tee -a "$LOG_FILE"
                            exit 0
#
