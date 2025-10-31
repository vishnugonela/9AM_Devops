##############################################################################
#  Name of the File : Dockerfile
#  Objective of the file : To create an image fof jenkiens_backup_job 
#  Date of creation  : 31-10-2025
#  Version           :1.0.0
# ############################################################################

# Base Image 
FROM ubuntu:22.04

#Metadata
LABEL maintainer="Bhavyashree" \
      Project="Jenkins_Backup" \
      Version="1.0"

#Installing dependencies 
# Reason to deleted files in list directory :A to ensure removing corrupt files loaded in this directory 
# Working directory is place where workspace is created to run the existing commands

RUN apt-get update && \
apt-get	install -y curl tar gzip && \
apt-get clean && rm -rf /var/lib/apt/lists/
#Copy Files
COPY jenkins_backup.sh /app/jenkins_backup.sh

#Providing execute permission 
RUN chmod +x /app/jenkins_backup.sh
# Default Command : i.e when DOCKER file execute the below command is first executed c
CMD ["bash", "/app/jenkins_backup.sh"]


