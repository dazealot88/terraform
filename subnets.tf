

# Creating A Public Subnet
resource "aws_subnet" "team-pub" {
    vpc_id = aws_vpc.team-demo.id
    cidr_block = "70.0.1.0/24"
    availability_zone = "us-west-1a"
    map_public_ip_on_launch = true
  
    tags = {
    Name = "team-pub"
  }
}

# Creating A Private Subnet
resource "aws_subnet" "team-pri" {
    vpc_id = aws_vpc.team-demo.id
    cidr_block = "70.0.2.0/24"
    availability_zone = "us-west-1c"
  
  tags = {
    Name = "team-pri"
  }
}