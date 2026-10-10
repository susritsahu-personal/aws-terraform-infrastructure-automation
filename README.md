\# AWS Infrastructure Automation with Terraform



A hands-on project that uses Terraform to provision a small AWS network and an EC2 instance in the Mumbai region (`ap-south-1`).



\## What it creates



\- A VPC and public subnet

\- An internet gateway and route table for internet access

\- A security group with outbound access and no inbound SSH rule

\- An Amazon Linux 2023 EC2 instance (`t3.micro`) with an 8 GiB `gp3` root volume

\- An IAM role and instance profile that allow the instance to use AWS Systems Manager Session Manager



The EC2 instance uses Session Manager for access, so the project does not need an SSH key pair or an inbound SSH rule.



\## Terraform files



\- `main.tf` — Terraform and AWS provider settings, VPC, subnet, internet gateway, route table, and security group

\- `iam.tf` — EC2 role, Session Manager policy attachment, and instance profile

\- `ec2.tf` — Amazon Linux image lookup and EC2 instance

\- `variables.tf` — configurable network ranges and instance type

\- `outputs.tf` — VPC, subnet, security group, and instance details

\- `.terraform.lock.hcl` — records the selected AWS provider version

\- `.gitignore` — excludes local Terraform data and files that should not be committed



\## Prerequisites



\- Terraform

\- AWS CLI configured with an AWS identity that has the required permissions

\- Git



Never commit AWS access keys, Terraform state files, or files containing secrets.



\## Deploy



Run these commands from the project directory:



```powershell

terraform init

terraform validate

terraform plan

terraform apply

