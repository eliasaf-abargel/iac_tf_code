
![Terraform Version](https://img.shields.io/badge/Terraform-1.7.3-blue.svg) ![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?logo=amazon-aws&logoColor=white) ![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white) ![ArgoCD](https://img.shields.io/badge/ArgoCD-%23F05033.svg?logo=argo&logoColor=white)

# Terraform Configuration for AWS EKS Cluster by Eliasaf Abargel

## Overview
- This Terraform configuration sets up an **AWS EKS** (Elastic Kubernetes Service) Cluster.
- It includes configurations for providers, variables, main settings, a VPC, an EKS cluster, and outputs.

## Requirements
- **Terraform** v1.6.3 or higher.
- **AWS Provider** version ~> 5.25.0.
- Additional providers: 
  - `random` (~> 3.5.1)
  - `tls` (~> 4.0.4)
  - `time` (~> 0.10.0)
  - `cloudinit` (~> 2.3.2)
  - `kubernetes` (>= 2.23.2)

## Setup
- **Backend**: AWS S3 for state management.
  - Bucket: Specified in configuration (replace `<bucket-name>` with actual bucket name).
  - Key: `terraform.tfstate`.
  - Region: `us-east-1`.

## Configuration Files
1. **`variables.tf`**: Defines variables like AWS region and cluster name.
   - Default region: `us-east-1`.
   - Default cluster name: `quizapp-eks`.
2. **`main.tf`**: Configures the Kubernetes and AWS providers.
   - Sets up the connection to the EKS cluster.
3. **`vpc.tf`**: Sets up the VPC for the EKS cluster.
   - CIDR block: `10.20.0.0/16`.
   - Configures both private and public subnets.
4. **`eks-cluster.tf`**: Configures the EKS cluster.
   - Cluster version: `1.29`.
   - Node groups: master and worker with specified instance types and sizes.
5. **`outputs.tf`**: Outputs the cluster name, endpoint, region, and security group ID.

## Usage
1. **Initialize Terraform**: 
   ```bash
   terraform init
   ```
2. **Validate Terraform code**: 
   ```bash
   terraform validate
   ```
3. **Plan Terraform**: 
   ```bash
   terraform plan
   ```
4. **Apply configuration**: 
   ```bash
   terraform apply
   ```
5. **Validate outputs after successful apply**.

## Notes
- Replace placeholder values (like `<bucket-name>`) with actual values.
- Ensure you have appropriate AWS permissions.

---

## Installation Instructions for Mac M1 and Above

### A) Prerequisites
- Install **Terraform CLI**
- Install **AWS CLI**
- Install **VS Code Editor** - recommended for development.
- Install **HashiCorp Terraform plugin** for VS Code - recommended.

### B) Mac M1/M2 - Terraform Installation
1. **Download Terraform for Mac**:
   - [Official Terraform Downloads](https://www.terraform.io/downloads.html)

2. **Install Terraform**:
   Open a terminal and run the following commands:
   ```bash
   brew tap hashicorp/tap
   brew install hashicorp/tap/terraform
   ```

3. **Verify Terraform Installation**:
   ```bash
   terraform version
   ```

### C) Install AWS CLI for Mac M1/M2
1. **Download AWS CLI**:
   - [Official AWS CLI v2 for Mac M1/M2](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

2. **Install AWS CLI**:
   Open a terminal and run the following command:
   ```bash
   curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
   sudo installer -pkg AWSCLIV2.pkg -target /
   ```

3. **Verify AWS CLI Installation**:
   ```bash
   aws --version
   ```

### D) Configure AWS Credentials
1. **Create Security Credentials** in AWS Management Console:
   - Go to **IAM -> Users -> Your User -> Security Credentials -> Create Access Key**.

2. **Configure AWS credentials** on your terminal:
   ```bash
   aws configure
   ```
   - Enter your **Access Key ID**, **Secret Access Key**, **default region**, and **output format**.

3. **Verify AWS Credentials**:
   ```bash
   aws s3 ls
   ```

---

### Tools & Technologies Used:
- ![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?logo=github&logoColor=white)
- ![Terraform](https://img.shields.io/badge/Terraform-%235835CC.svg?logo=terraform&logoColor=white)
- ![ArgoCD](https://img.shields.io/badge/ArgoCD-%23F05033.svg?logo=argo&logoColor=white)
- ![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?logo=amazon-aws&logoColor=white)
- ![Kubernetes](https://img.shields.io/badge/Kubernetes-%23326CE5.svg?logo=kubernetes&logoColor=white)
```
