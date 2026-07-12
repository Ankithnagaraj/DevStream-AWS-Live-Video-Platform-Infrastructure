# DevStream AWS Live Video Platform Infrastructure

## Technologies

- AWS EC2
- Auto Scaling Group
- Application Load Balancer
- Amazon S3
- CloudFront
- AWS Lambda
- API Gateway
- Amazon RDS
- Amazon SNS
- VSFTPD (FTP over TLS)
- NFS
- LVM
- LUKS Encryption
- Nginx
- FastAPI
- Cron Automation

## AWS Architecture

![AWS Architecture](screenshots/Architecture%20.png)

## Project Structure

- website/
- nginx/
- scripts/
- docs/
- architecture/
- screenshots/
  ## Login Page

User authentication page for secure access to the platform.

![Login Page](screenshots/login.png)

---

## Upload Page

Content creators can upload videos along with metadata.

![Upload Page](screenshots/upload.png)

---

## Admin Dashboard

Administrators can review and manage uploaded videos.

![Admin Dashboard](screenshots/admin.png)

---

## Video Approval

Admin approval workflow before videos are published.

![Video Approval](screenshots/VideoApproval.png)

---

## Published Videos

Approved videos available for viewers through CloudFront.

![Published Videos](screenshots/Published.png)

---

## Viewer Page

Users can browse and securely stream published videos.

![Viewer Page](screenshots/Viewer.png)

---

## Amazon S3

Private S3 bucket used for storing uploaded video files.

![Amazon S3](screenshots/s3.png)

---

## Amazon SNS

SNS notifications sent when new videos require approval.

![Amazon SNS](screenshots/SNS.png)

---

## Amazon CloudFront

CloudFront distribution used for secure and low-latency video delivery.

![Amazon CloudFront](screenshots/CloudFront.png)

Developed by Ankith Nagaraj
