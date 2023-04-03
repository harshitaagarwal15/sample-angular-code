# Create Internet-Gateway
resource "aws_internet_gateway" "myigw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "FinalProject-IGW"
  }
}


# Create public RouteTable
resource "aws_route_table" "public_routetable" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0" //use so subnet can connect to anywhere
    gateway_id = aws_internet_gateway.myigw.id
  }

  tags = {
    Name = "FinalProject-Public_RouteTable"
  }
}

# Associate Public Subnet in->Public Route table
resource "aws_route_table_association" "Publicsubnet-associate" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_routetable.id
}

