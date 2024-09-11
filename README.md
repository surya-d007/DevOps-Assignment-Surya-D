# Terraform Setup, Dockerization, and AWS ECR Push Guide

## Overview

This guide provides detailed instructions for setting up infrastructure using Terraform, Dockerizing your application, and pushing it to Amazon Elastic Container Registry (ECR).

## Prerequisites

1. **Terraform**: Install [Terraform](https://www.terraform.io/downloads) on your local machine.
2. **AWS CLI**: Install [AWS CLI](https://aws.amazon.com/cli/) and configure it with your AWS account.
3. **Docker**: Ensure Docker is installed. Install from [Docker](https://www.docker.com/get-started).
4. **AWS Account**: You need an active AWS account with permissions for creating ECR repositories, EC2 instances, VPC, etc.

---

## AWS Configuration

### Step 1: Configure AWS CLI

Configure your AWS credentials by running:

```bash
aws configure
```

This will ask for:

```
AWS Access Key ID
AWS Secret Access Key
Default region name (e.g., ap-south-1 for Mumbai)
```

Alternatively, you can set environment variables for AWS credentials:
If you are doing this in your github repo make sure you declare secrets for your repo which consist of

```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
TF_VAR_KEY_NAME
ECR_REPOSITORY
```

Terraform Setup in your local Machine

### Step 1: Initialize Terraform

Run the following command to initialize your working directory, which downloads the provider plugins:

```
terraform init
```

### Step 2: Plan the Infrastructure

Generate and review the execution plan to preview which resources will be created:

```
terraform plan -var="key_name=your-key-pair"
```

### Step 3: Apply the Terraform Plan

Apply the Terraform configuration to provision AWS resources:

```
terraform apply -var="key_name=your-key-pair"
```

Replace "your-key-pair" with the name of your existing EC2 key pair.

### Step 4: Destroy Resources (Optional)

To clean up all resources created by Terraform and avoid charges, run:

```
terraform destroy -var="key_name=your-key-pair"
```
