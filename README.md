# Terraform Setup and Execution Guide

## Overview

This document provides instructions to set up and run the Terraform script locally to provision AWS resources such as VPC, Subnet, EC2 instances, and more.

## Prerequisites

1. **Terraform**: Ensure Terraform is installed on your local machine. You can download it from [here](https://www.terraform.io/downloads).
2. **AWS CLI**: AWS CLI must be installed and configured. You can install it from [here](https://aws.amazon.com/cli/).
3. **AWS Account**: You will need an active AWS account to create resources.

## AWS Configuration

### Step 1: Configure AWS CLI

To configure AWS CLI, run the following command and follow the prompts:

```bash
aws configure
This will ask for:

AWS Access Key ID
AWS Secret Access Key
Default region name (e.g., ap-south-1 for Mumbai)
Default output format (e.g., json)
Alternatively, you can set AWS credentials using environment variables:

bash
Copy code
export AWS_ACCESS_KEY_ID="your-access-key-id"
export AWS_SECRET_ACCESS_KEY="your-secret-access-key"
export AWS_DEFAULT_REGION="ap-south-1"  # Example region: Mumbai
Step 2: Initialize Terraform
Navigate to your Terraform project directory and run the following command to initialize the Terraform working directory:

bash
Copy code
terraform init
This command downloads the necessary provider plugins and initializes the working directory.

Step 3: Plan the Deployment
Before applying any changes, you can generate and review the Terraform execution plan. This will show you what resources Terraform will create:

bash
Copy code
terraform plan -var="key_name=your-key-pair"
Replace "your-key-pair" with the name of your EC2 key pair. If you don't have one, create an EC2 key pair in the AWS Management Console and provide the name here.
Step 4: Apply the Configuration
Run the following command to apply the configuration and provision the resources:

bash
Copy code
terraform apply -var="key_name=your-key-pair"
Confirm the apply step by typing yes when prompted. Terraform will start provisioning the AWS resources based on your configuration.

Step 5: Access Your Resources
After the resources are created, Terraform will output key information such as the EC2 instance's public IP. You can use this IP to SSH into your instance:

bash
Copy code
ssh -i /path/to/your/key.pem ec2-user@<instance_public_ip>
Make sure to replace /path/to/your/key.pem with the actual path to your key file, and <instance_public_ip> with the public IP of the EC2 instance.

Cleaning Up
To destroy all the resources that were created by Terraform, run:

bash
Copy code
terraform destroy -var="key_name=your-key-pair"
This command will tear down all AWS resources created by the script.
```
