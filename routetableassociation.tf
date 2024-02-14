resource "aws_route_table_association" "rt_custom_association" {
  subnet_id = aws_subnet.subnet_publica.id
  route_table_id = aws_route_table.rt_custom_internet.id
}