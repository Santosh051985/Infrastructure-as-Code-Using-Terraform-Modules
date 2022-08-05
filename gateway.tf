provider "aws" {
  region     = "us-east-1"
  access_key = "access_key_id"
  secret_key = "secrete_key_id"
}
resource "aws_internet_gateway" "igw" {
vpc_id = aws_vpc.my-vpc.id
tags = {
Name = "Demo IGW"
}
}
