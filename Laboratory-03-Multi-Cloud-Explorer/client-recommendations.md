# Client Recommendations

## Client A – Startup Company
**Recommended Platform:** Google Cloud Platform (GCP)

**Justification:** A budget-limited startup benefits from GCP's per-second billing, sustained-use discounts, and generous free-tier credits, which reduce cost risk while the product finds market fit. GCP's App Engine and Cloud Run make it easy to deploy a mobile app backend without managing infrastructure directly, and everything scales automatically as usage grows. Since the founders expect rapid growth, GCP's developer-friendly tooling and managed services let a small team move fast without a large dedicated DevOps staff.

**Services the client could use:**
- App Engine or Cloud Run (backend hosting for the mobile app)
- Firebase (mobile-focused backend-as-a-service, authentication, push notifications)
- Cloud Storage (storing user-generated content/media)

## Client B – University
**Recommended Platform:** Microsoft Azure

**Justification:** Since the university already runs Windows Server, Microsoft 365, and Active Directory, Azure is the path of least resistance — it extends their existing identity system into the cloud via Microsoft Entra ID rather than forcing a rebuild. Azure Hybrid Benefit can also reduce licensing costs for Windows Server workloads they migrate. This minimizes retraining for IT staff who are already familiar with Microsoft's admin tools.

**Services the client could use:**
- Microsoft Entra ID (extends existing Active Directory to the cloud)
- Azure Virtual Machines (migrating existing Windows Server workloads)
- Azure Virtual Desktop (cloud-hosted desktops for students/staff)

## Client C – AI Research Company
**Recommended Platform:** Google Cloud Platform (GCP)

**Justification:** GCP is widely regarded as the strongest platform for AI/ML workloads, offering Tensor Processing Units (TPUs) purpose-built for machine learning alongside GPUs. Vertex AI provides an end-to-end platform for training, tuning, and deploying models, and BigQuery makes it easy to run large-scale analytics on research data. This combination gives an AI research team high-performance computing without needing to manage the underlying hardware.

**Services the client could use:**
- Vertex AI (model training, tuning, and deployment)
- Compute Engine with GPU/TPU support (high-performance computing)
- BigQuery (large-scale data analysis for research datasets)

## Client D – Global E-Commerce Company
**Recommended Platform:** Amazon Web Services (AWS)

**Justification:** AWS has the largest global footprint of Regions and Availability Zones, which helps a multinational e-commerce company keep latency low for customers everywhere. Its auto-scaling and load-balancing tools are battle-tested at massive scale (Amazon itself runs on this infrastructure for its own retail business), and services like DynamoDB and CloudFront support the high-availability, always-on demands of global online shopping.

**Services the client could use:**
- Amazon EC2 with Auto Scaling (handling variable global traffic)
- Amazon CloudFront (content delivery network for fast global page loads)
- Amazon DynamoDB (highly available, low-latency database for shopping carts/inventory)

## Multi-Cloud Decision Matrix

| Business Requirement | Recommended Platform | Justification |
|---|---|---|
| Startup Company | GCP | Lowest cost of entry, generous free tier, fast time-to-market for small teams |
| Enterprise Organization | AWS | Broadest service catalog and most mature enterprise support/compliance tooling |
| Microsoft Environment | Azure | Native integration with Windows Server, Microsoft 365, and Microsoft Entra ID |
| AI / Machine Learning | GCP | TPUs, Vertex AI, and BigQuery lead in AI/ML-specific tooling |
| Kubernetes Deployment | GCP | GKE is the most mature managed Kubernetes offering (Google created Kubernetes) |
| Global Web Application | AWS | Largest number of Regions/Availability Zones for low global latency and high availability |
