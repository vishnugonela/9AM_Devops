# 🧰 Jenkins Backup (Dockerized)

Simple, reliable way to back up your Jenkins data using Docker.  
Runs a cron job inside the container and keeps your Jenkins safe — no manual work needed.

---

## How to Use

### 1. Build Image
```bash
docker build -t jenkins-backup:latest .

Run Container
docker run -d \
  --name jenkins-backup \
  -v /var/lib/jenkins:/var/lib/jenkins \
  -v /backup:/var/log/jenkins-backup \
  jenkins-backup:latest
Backups will be stored in /backup on your host


Default Settings

Backup every hour (via cron)
Keeps 7 days of old backups
Backup location: /var/log/jenkins-backup inside container
You can tweak these by editing jenkins_backup.sh.

Files Included
├── Dockerfile
├── jenkins_backup.sh
└── README.md

Optional: AWS S3 Integration
If you want backups pushed to Amazon S3,
just add these environment variables when running the container:
docker run -d \
  -e AWS_ACCESS_KEY_ID=<your_key> \
  -e AWS_SECRET_ACCESS_KEY=<your_secret> \
  -e S3_BUCKET=<your_bucket_name> \
  -v /var/lib/jenkins:/var/lib/jenkins \
  jenkins-backup:latest


To trigger a manual backup:
docker exec -it jenkins-backup /usr/local/bin/jenkins_backup.sh
Built by Bhavya Shree — keeping DevOps simple and safe.


