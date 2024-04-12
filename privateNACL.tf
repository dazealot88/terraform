
#Creating Network ACL at the Private Subnet

resource "aws_network_acl" "pri-nacl" {
  vpc_id = aws_vpc.team-demo.id
  subnet_ids = [aws_subnet.team-pri.id]

  ingress {
    protocol = "-1"
    rule_no = 100
    action = "allow"
    cidr_block = "70.0.0.0/16" #allowing inbound traffic only within the vpc
    from_port = 0
    to_port = 0
  }
  egress {
    protocol = "-1"
    rule_no = 100
    action = "allow"
    cidr_block = "70.0.0.0/16" #allowing outbound traffic only within the vpc
    from_port = 0
    to_port = 0
  }
  tags = {
    Name = "pri-nacl"
  }
}