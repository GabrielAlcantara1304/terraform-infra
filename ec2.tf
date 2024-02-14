resource "aws_instance" "ec2-control" {
  ami = "ami-05147510eb2885c80" #ubuntu image
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet_publica.id
  vpc_security_group_ids = [aws_security_group.custom_sg.id]
  key_name = "minha-chave"

  tags = {
    "Name" = "ec2-control"
  }
}

resource "aws_instance" "ec2-worker1" {
  ami = "ami-05147510eb2885c80" #ubuntu image
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet_publica.id
  vpc_security_group_ids = [aws_security_group.custom_sg.id]
  key_name = "minha-chave"

  tags = {
    "Name" = "ec2-worker1"
  }
}

resource "aws_instance" "ec2-worker2" {
  ami = "ami-05147510eb2885c80" #ubuntu image
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet_publica.id
  vpc_security_group_ids = [aws_security_group.custom_sg.id]
  key_name = "minha-chave"

  tags = {
    "Name" = "ec2-worker2"
  }
}