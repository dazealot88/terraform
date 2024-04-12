

resource "aws_security_group" "demo-sg" {
  name        = "demo-sg"
  description = "Allow all inbound and outbound traffic"
  vpc_id = aws_vpc.team-demo.id

tags = {
    Name = "demo-sg"
  }

# Ingress rules (incoming traffic)

ingress {
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"       # SSH protocol is TCP
  cidr_blocks = ["0.0.0.0/0"] # Allow SSH from anywhere
}


# Egress rules (outgoing traffic)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 represents all protocols
    cidr_blocks = ["0.0.0.0/0"] #Allow All Outbound traffic
  }
}