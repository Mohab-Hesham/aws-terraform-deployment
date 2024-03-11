### instance Variables 
variable "ami" {
    description= "to define the ami of ec2 instance"
    type= string 
}

variable "instance_type" {
    description= "to define the instance_type of ec2 instance"
    type= string 
}


## Network Variables 
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type= string
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
}

variable "domain_name" {
  description = "The domain name for the Route 53 hosted zone"
  type= string
}

# Dynamo BD 
variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}
