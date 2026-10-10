# AWS Infrastructure Automation with Terraform

A hands-on project that provisions AWS networking and an EC2 instance with Terraform in the Mumbai region (`ap-south-1`).

## What it creates

- A VPC and public subnet
- An internet gateway and public route table
- A security group with outbound access and no inbound SSH rule
- An Amazon Linux 2023 `t3.micro` EC2 instance with an 8 GiB `gp3` root volume
- An IAM role and instance profile for AWS Systems Manager Session Manager

The instance was accessed through Session Manager, without an SSH key pair or inbound SSH access.

## Project files

| File | Purpose |
| --- | --- |
| `main.tf` | AWS provider, VPC, subnet, internet gateway, route table, and security group |
| `variables.tf` | Configurable VPC CIDR, subnet CIDR, and instance type |
| `iam.tf` | EC2 IAM role, Session Manager policy attachment, and instance profile |
| `ec2.tf` | Amazon Linux image lookup and EC2 instance |
| `outputs.tf` | VPC, subnet, security group, and instance outputs |
| `.terraform.lock.hcl` | Records the selected AWS provider version |
| `.gitignore` | Excludes local Terraform data and state files |

## Screenshots

- [VPC and subnet creation](screenshots/network-apply.png)
- [Route table association](screenshots/network-routing-apply.png)
- [IAM role and SSM setup](screenshots/iam-ssm-apply.png)
- [Running EC2 instance](screenshots/ec2-instance-verified.png)
- [Session Manager connection](screenshots/ssm-session.png)
- [Terraform outputs](screenshots/terraform-outputs.png)

## Run the project

Prerequisites: Terraform, AWS CLI, and an AWS identity with the required permissions.

From the project folder, run:

```powershell
terraform init
terraform validate
terraform plan
terraform apply
terraform output
