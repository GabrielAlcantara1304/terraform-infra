provider "aws" {
    region = "eu-west-1"
  
}

resource "aws_vpc" "minha_vpc" {
  cidr_block = "10.0.0.0/16" #ips disponivel na vpc
  instance_tenancy = "default"

  tags = {
    "Name" = "minha_vpc"
  }

  
}

