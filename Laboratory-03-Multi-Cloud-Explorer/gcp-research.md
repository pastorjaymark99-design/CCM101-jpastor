## Brief Overview

Google Cloud Platform (GCP) is Google's public cloud offering, launched in 2008 (with major service expansion around 2011–2013). It leverages the same global infrastructure Google built for Search, Gmail, and YouTube, and is widely known for its strengths in data analytics, AI/ML, and container orchestration (Google created Kubernetes).

## Global Infrastructure

GCP infrastructure is organized into Regions and Zones (isolated locations within a Region), connected by Google's private global fiber network rather than the public internet, which helps with performance and low latency between regions.

## Cloud Management Console

The Google Cloud Console is the web-based management interface, alongside Cloud Shell (a free browser-based terminal with the `gcloud` CLI pre-installed) and Terraform/Deployment Manager for infrastructure-as-code.

## Four (4) Core Services

1. Compute Engine – Configurable virtual machines, GCP's equivalent to EC2/Azure VMs.
2. Cloud Storage – Object storage for unstructured data, GCP's equivalent to S3/Blob Storage.
3. Cloud IAM – Identity and access management for controlling permissions on GCP resources.
4. Google Kubernetes Engine (GKE) – Managed Kubernetes service; GCP is widely regarded as the most mature Kubernetes offering since Google created and open-sourced Kubernetes.

## Three (3) Advantages

1. Data analytics and AI/ML strength – Tools like BigQuery (data warehouse) and Vertex AI are considered industry-leading for large-scale data and machine learning work.
2. Kubernetes and containers leadership – GKE is generally seen as the most refined managed Kubernetes experience, backed by Google's own internal expertise (Borg/Kubernetes lineage).
3. Competitive, simple pricing – Per-second billing and sustained-use discounts applied automatically, without needing to pre-purchase reserved capacity.

## Typical Enterprise Use Cases

- Data-intensive companies doing large-scale analytics or business intelligence (BigQuery)
- AI/ML research and product teams needing high-performance computing and TPUs
- Organizations building container-native or Kubernetes-based applications
- Companies wanting a cost-efficient, developer-friendly cloud with strong open-source tooling
