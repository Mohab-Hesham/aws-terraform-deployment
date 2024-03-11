resource "aws_vpc_endpoint" "my_endpoint" {
  vpc_id            = module.example_vpc.vpc_id
  service_name      = "com.amazonaws.us-east-1.dynamodb"
  # Add more configurations as needed
}
