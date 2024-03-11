resource "aws_vpc" "example_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "example-vpc"
  }
}

resource "aws_subnet" "public_subnets" {
  count           = length(var.public_subnet_cidr_blocks)
  vpc_id          = aws_vpc.example_vpc.id
  cidr_block      = var.public_subnet_cidr_blocks[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnets" {
  count           = length(var.private_subnet_cidr_blocks)
  vpc_id          = aws_vpc.example_vpc.id
  cidr_block      = var.private_subnet_cidr_blocks[count.index]

  tags = {
    Name = "private-subnet-${count.index + 1}"
  }
}

resource "aws_route53_zone" "example_zone" {
  name = var.domain_name
}