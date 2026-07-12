# DevStream AWS Live Video Platform Infrastructure
  (Advanced Linux + AWS End-to-End Deployment Project)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Amazon Linux](https://img.shields.io/badge/Linux-Amazon%20Linux%202023-yellow?logo=linux)
![FastAPI](https://img.shields.io/badge/FastAPI-009688?logo=fastapi)
![Nginx](https://img.shields.io/badge/Nginx-009639?logo=nginx)
![Python](https://img.shields.io/badge/Python-3.12-blue?logo=python)
![Amazon EC2](https://img.shields.io/badge/Amazon-EC2-FF9900?logo=amazonaws)
![Amazon S3](https://img.shields.io/badge/Amazon-S3-orange)
![CloudFront](https://img.shields.io/badge/CloudFront-AWS-orange)
![AWS Lambda](https://img.shields.io/badge/AWS-Lambda-FF9900?logo=awslambda)
![API Gateway](https://img.shields.io/badge/API-Gateway-FF4F8B)
![Amazon RDS](https://img.shields.io/badge/Amazon-RDS-527FFF)
![Amazon SNS](https://img.shields.io/badge/Amazon-SNS-FF9900)
![Auto Scaling](https://img.shields.io/badge/Auto-Scaling-orange)
![Application Load Balancer](https://img.shields.io/badge/Application-Load%20Balancer-orange)
![VSFTPD](https://img.shields.io/badge/FTP-VSFTPD-blue)
![NFS](https://img.shields.io/badge/Linux-NFS-success)
![LVM](https://img.shields.io/badge/Linux-LVM-blue)
![LUKS](https://img.shields.io/badge/Linux-LUKS-red)
![Cron](https://img.shields.io/badge/Linux-Cron-green)

## Introduction
DevStream is a secure cloud-based live video platform developed using AWS and Linux technologies. The project demonstrates secure content upload, processing, storage, and streaming using a multi-tier architecture. It implements network isolation through a Virtual Private Cloud (VPC), dedicated public and private subnets, route tables, and Security Groups to ensure secure communication between all components. The system integrates AWS services such as EC2, Amazon S3, AWS Lambda, Amazon RDS MySQL, API Gateway, CloudFront, and Application Load Balancer to build a scalable and highly available solution. The project highlights cloud networking, automation, Linux administration security, and infrastructure best practices while providing an efficient and reliable live video streaming platform. 

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

Conclusion: 
The DevStream project successfully demonstrates the design and implementation of a secure, scalable, and highly available cloud based video streaming platform using Amazon Web Services (AWS) and Linux. The application enables content creators to upload videos securely, administrators to review and publish content, and viewers to stream approved videos through Amazon CloudFront using Signed URLs. The infrastructure incorporates Amazon EC2, VPC, RDS, S3, CloudFront, Lambda, SNS, Application Load Balancer, and Auto Scaling to ensure security, performance, and high availability. Linux administration features such as NFS, LVM, LUKS encryption, ACLs, and Cron Jobs further strengthen storage management and system security. The project follows AWS best practices by using private networking, secure access through a Bastion Host, and automated scaling based on workload. End-to-end testing verified the successful integration of all components and demonstrated reliable application performance.


Developed by Ankith Nagaraj
