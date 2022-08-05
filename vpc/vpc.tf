provider "aws" {
  region     = "us-east-1"
  access_key = "access_key_id"
  secret_key = "secrete_key_id"
}
resource "aws_vpc" "my-vpc" {
cidr_block = "10.0.0.0/16"
tags = {
Name = "Demo VPC"
}
}
