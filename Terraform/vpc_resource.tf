# Create VPC
resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "FinalProject_VPC"
  }
}

# Create Public Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public_subnets_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true //use to make the subnet public
  tags = {
    Name = "FinalProject-PublicSubnet"
  }
}

# Create Private Subnet
resource "aws_subnet" "private_subnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.private_subnets_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false //use to make the subnet private
  tags = {
    Name = "FinalProject-PrivateSubnet"
  }
}


