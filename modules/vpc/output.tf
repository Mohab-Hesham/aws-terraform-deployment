output "public_subnet_ids" {
  value = aws_subnet.public_subnets[*].id
}


output "vpc_id" {
  value = aws_vpc.example_vpc.id
}