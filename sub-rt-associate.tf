

# Associating the route table to the public subnet


resource "aws_route_table_association" "pub-rta" {
  subnet_id = aws_subnet.team-pub.id
  route_table_id = aws_route_table.public-rt.id
}


# Associating the route table to the private subnet


resource "aws_route_table_association" "pri-rta" {
  subnet_id = aws_subnet.team-pri.id
  route_table_id = aws_route_table.private-rt.id
  
}