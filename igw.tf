

# Creating An Internet Gateway
resource "aws_internet_gateway" "team_igw" {
    vpc_id = aws_vpc.team-demo.id
  
    tags = {
    Name = "team_igw"
  }
}