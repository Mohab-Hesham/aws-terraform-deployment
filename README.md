# AWS Terraform Deployment

This project is a demonstration of Terraform configurations for deploying and managing infrastructure on AWS.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites
To run this project, you need to have Terraform installed on your local machine.
### Installing
1-Clone the repository to your local machine:
```
git clone https://github.com/yourusername/your-repository.git
```
2-Navigate to the project directory:
```
cd your-repository
```
3-Initialize Terraform:
```
terraform init
```
4-Plan Terraform configurations:
```
terraform plan
```
5-Apply Terraform configurations:
```
terraform Apply
```
## Directory Structure
```
aws-terraform-deployment
│
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │   
│   │
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   │   
│   │
│   └── dynamodb/
│       ├── main.tf
│       └── variables.tf
│
├── project1/
│   ├── main.tf
│   ├── variables.tf
│   ├── provider.tf
│   ├── vpc-end-points.tf
│   └── outputs.tf
│
└── project2/
    ├── main.tf
    ├── variables.tf
    ├── provider.tf
    ├── vpc-end-points.tf
    └── outputs.tf
```


## Modules Directory:

vpc/ Directory:

main.tf: Contains the main Terraform configuration for creating a VPC, including subnets, route tables, and internet gateway.
variables.tf: Defines input variables used in the VPC module.
outputs.tf: Defines the outputs of the VPC module, such as VPC ID, subnet IDs, etc.

ec2/ Directory:

main.tf: Contains the main Terraform configuration for creating EC2 instances within the VPC.
variables.tf: Defines input variables used in the EC2 module.
provider.tf: Specifies the provider configuration for AWS.
outputs.tf: Defines the outputs of the EC2 module, such as instance IDs, public IP addresses, etc.

dynamodb/ Directory:

main.tf: Contains the main Terraform configuration for creating DynamoDB tables.
variables.tf: Defines input variables used in the DynamoDB module.

Project1 Directory:

main.tf: Contains the main Terraform configuration for project 1, which may include resource definitions and module invocations specific to the project.
variables.tf: Defines input variables used in project 1.
provider.tf: Specifies the provider configuration for AWS specific to project 1.
vpc-end-points.tf: Contains Terraform configurations for defining VPC endpoints specific to project 1.
outputs.tf: Defines the outputs specific to project 1.

Project2 Directory:

main.tf: Contains the main Terraform configuration for project 2, which may include resource definitions and module invocations specific to the project.
variables.tf: Defines input variables used in project 2.
provider.tf: Specifies the provider configuration for AWS specific to project 2.
vpc-end-points.tf: Contains Terraform configurations for defining VPC endpoints specific to project 2.
outputs.tf: Defines the outputs specific to project 2.

### S3 Module
- Creates the S3 bucket to save the state file 
- Inputs:
  - `bucket---mo`: The name of the S3 bucket.
  
## Deployment
![final project](https://github.com/Mohab-Hesham/aws-terraform-deployment/assets/161193942/e701533a-80ab-4fde-8418-eb3ee5a16769)



