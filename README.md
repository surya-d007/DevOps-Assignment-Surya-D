# Terraform Setup and Execution Guide

## Overview

This document provides instructions to set up and run the Terraform script locally to provision AWS resources.

## Prerequisites

1. **Terraform**:
2. **AWS CLI**:
3. **AWS Account**:

## AWS Configuration

1. **Configure AWS CLI**:
   To configure AWS CLI, run the following command and follow the prompts:

   ```sh
   aws configure
   Enter your AWS Access Key ID, Secret Access Key, default region name, and default output format.
   ```

Set Environment Variables (Optional): Alternatively, you can set AWS credentials using environment variables:

```sh
Copy code
export AWS_ACCESS_KEY_ID="your-access-key-id"
export AWS_SECRET_ACCESS_KEY="your-secret-access-key"
export AWS_DEFAULT_REGION="ap-south-1" # Mumbai region
```

Initialize Terraform: Run the following command to initialize the Terraform working directory:

```sh
Copy code
terraform init
```

Plan the Deployment: Generate and review an execution plan:

```sh
Copy code
terraform plan -var="key_name=your-key-pair"
```

Apply the Configuration: Apply the configuration to create the resources:

```sh
Copy code
terraform apply -var="key_name=your-key-pair"
```
