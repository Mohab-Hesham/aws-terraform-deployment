###  Create vpc and puplic and Private Subnets 
module "example_vpc" {
  source                    = "../modules/vpc"
  vpc_cidr_block            = var.vpc_cidr_block
  public_subnet_cidr_blocks = var.public_subnet_cidr_blocks 
  private_subnet_cidr_blocks = var.private_subnet_cidr_blocks
  domain_name               = var.domain_name
}




############ create Dynamo DB
module "dynamodb_example" {
  source     = "../modules/dynamodb"
  table_name = "my_Dynamo_DB"
}




# Configue the ec2 resource  and assign it to the puplic subnet 
module "ec2_instance" {
  source       = "../modules/ec2"
  ami          = var.ami   
  instance_type = var.instance_type    
  
  tags = {
    Name = "example-instance"
    Environment = "production"
  }
  subnet_id    = module.example_vpc.public_subnet_ids[0]  
  depends_on = [module.dynamodb_example]
}

