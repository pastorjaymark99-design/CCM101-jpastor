## Brief Overview

Amazon Web Services (AWS) is the cloud computing platform launched by Amazon in 2006. It was the first major public cloud provider and remains the market leader by revenue and service breadth, offering over 200 fully featured services from data centers globally.

## Global Infrastructure

AWS infrastructure is organized into Regions (geographic areas, e.g., `us-east-1` in Virginia) and Availability Zones (isolated data centers within a Region, usually 3+ per Region). This design lets customers deploy applications close to their users while building in redundancy against failures. AWS also operates edge locations for its CloudFront content delivery network. As of 2026, AWS spans roughly 38 Regions and 120+ Availability Zones worldwide, with more being added regularly — check the [AWS Global Infrastructure page](https://aws.amazon.com/about-aws/global-infrastructure/) for the exact current count at the time of submission.

## Cloud Management Console

The AWS Management Console is the web-based interface for provisioning and monitoring resources. It's organized by service category (Compute, Storage, Database, etc.) and includes AWS CloudShell for browser-based command-line access, plus the AWS CLI and SDKs for programmatic control.

## Four (4) Core Services

1. Amazon EC2 (Elastic Compute Cloud) – Resizable virtual machines ("instances") for running applications, with pay-as-you-go or reserved pricing.
2. Amazon S3 (Simple Storage Service) – Object storage for files, backups, and static websites, known for high durability (11 nines) and tiered storage classes.
3. AWS IAM (Identity and Access Management) – Controls who can access which AWS resources, using users, groups, roles, and fine-grained policies.
4. Amazon RDS (Relational Database Service) – Managed relational databases (MySQL, PostgreSQL, SQL Server, etc.) with automated backups and patching.

## Three (3) Advantages

1. Breadth and maturity of services – The largest catalog of cloud services, including specialized tools for AI/ML (SageMaker), IoT, and analytics.
2. Market share and ecosystem – The largest community, most third-party tutorials/certifications, and broadest partner/marketplace ecosystem.
3. Global reach – The most Regions and Availability Zones of any provider, useful for low-latency global deployments.

## Typical Enterprise Use Cases

- Startups and scale-ups building cloud-native applications from scratch
- Large-scale web and mobile backends needing elastic, pay-as-you-go compute
- Big data analytics and machine learning pipelines
- Media streaming and content delivery at global scale
