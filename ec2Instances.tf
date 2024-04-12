
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

#Creating EC2 instance in public subnet

resource "aws_instance" "public-server" {
    ami = "ami-05c969369880fa2c2" #ubuntu ami
    instance_type = "t2.micro"
    subnet_id = aws_subnet.team-pub.id
    security_groups = [aws_security_group.demo-sg.id]
    key_name = "US-WEST-1-KEY"

    tags = {
      Name ="public-server"
    }
  
}


# Creating EC2 instance in private subnet

resource "aws_instance" "private-server" {
    ami = "ami-0b990d3cfca306617" #Amazon Linux ami
    instance_type = "t2.micro"
    subnet_id = aws_subnet.team-pri.id
    security_groups = [aws_security_group.demo-sg.id]
    key_name = "US-WEST-1-KEY"

    tags = {
      Name ="private-server"
    }
}