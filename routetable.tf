

# Creating Route Tables For the Public Subnet
resource "aws_route_table" "public-rt" {
    vpc_id = aws_vpc.team-demo.id
    

    route  {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.team_igw.id

    }
  
  tags = {
    Name = "public-rt"
  }
}

# Creating A Route Table For the Private Subnet
resource "aws_route_table" "private-rt" {
    vpc_id = aws_vpc.team-demo.id
  
  tags = {
    Name = "private-rt"
  }
}