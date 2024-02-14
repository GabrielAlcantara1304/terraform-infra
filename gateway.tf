resource "aws_internet_gateway" "ig_custom" {
  vpc_id = aws_vpc.minha_vpc.id

  tags = {
    "name" = "ig_custom"
  }
}