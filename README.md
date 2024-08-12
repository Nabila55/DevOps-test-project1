# DevOps-test-project1
Repository for DevOps Testing
commiting using branchiN

# Project Name

## Project Overview

This project automates the deployment and management of cloud infrastructure using Terraform. It includes a CI/CD pipeline setup to manage deployments and a Bash script for additional automation tasks.

## Setting Up Terraform

- **Terraform**: Ensure you have Terraform installed on your local machine. You can download it from the [Terraform website](https://www.terraform.io/downloads.html).
- **Cloud Provider Account**: Set up credentials for your cloud provider (e.g., AWS, GCP, Azure)
     download terraform extension(HashiCorp terraform) in vsc
     project_id = "your_project_id"
      region     = "your_region"
      -terraform init
      -terraform apply -auto-approve
      -terraform plsn
## Setting up CI/CD Pipeline
     *.github/workflows/deploy.yml
### Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/Nabila55/DevOps-test-project1.git
   cd DevOps-test-project1


# Infrastructure and CI/CD Setup

## Terraform Setup

1. **Configure Terraform:**
   - Set environment variables for `PROJECT_ID`, `REGION`, etc.
   - Run `terraform init` to initialize the configuration.
   - Run `terraform apply` to deploy the infrastructure.

2. **Access the Application:**
   - Visit the Cloud Run service URL output by Terraform.

## CI/CD Pipeline

1. **GitHub Actions Workflow:**
   - Triggered on push to the `main` branch.
   - Builds and pushes Docker image, then deploys to Cloud Run.

## Retrieve Public IP

1. **Run Bash Script:**
   - Execute `retrieve_ip.sh <region>` to get the public IP of the Cloud Run service.

## Troubleshooting

- **Issues with Terraform:** Check the error message and verify API access and permissions.
- **CI/CD Failures:** Review GitHub Actions logs for errors.
- **Bash Script Errors:** Ensure the correct region is provided.

## Additional Features

Consider adding monitoring, security configurations, and disaster recovery strategies.

