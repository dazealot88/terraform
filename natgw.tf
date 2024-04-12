
#Creating Elastic IP for the NAT Gateway

#resource "aws_eip" "demo-eip" {
#       domain = "vpc"
#       depends_on = [aws_internet_gateway.team_igw]
#       tags = {
#       Name="demo_nat_gateway_eip"
#    }
#}



#Creating NAT Gateway for VPC

#resource "aws_nat_gateway" "demo-natgw" {
#  allocation_id = aws_eip.demo-eip.id
#  subnet_id     = aws_subnet.team-pub.id
#
#  tags = {
#    Name = "demo-natgw"
#  }
#}

