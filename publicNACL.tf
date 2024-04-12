# https://www.youtube.com/watch?v=5oVV3MKQ6JU

# Creating Network ACL at the Public Subnet

resource "aws_network_acl" "pub-nacl" {
  vpc_id = aws_vpc.team-demo.id
  subnet_ids = [aws_subnet.team-pub.id]
  ingress {
    protocol = "-1"
    rule_no = 100
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  egress {
    protocol = "-1"
    rule_no = 100
    action = "allow"
    cidr_block = "0.0.0.0/0"
    from_port = 0
    to_port = 0
  }
  tags = {
    Name = "pub-nacl"
  }
}