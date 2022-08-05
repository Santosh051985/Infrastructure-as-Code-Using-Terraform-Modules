provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYZ5SFO4MXJ4VGCAX"
  secret_key = "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"
}
#Create EC2 Instance
resource "aws_instance" "webserver1" {
ami = "ami-0cff7528ff583bf9a"
instance_type = "t2.micro"
availability_zone = "us-east-1a"
#vpc_security_group_ids = [aws_security_group.webserver-sg.id]
#subnet_id = aws_subnet.web-subnet-1.id
#user_data = file("install_apache.sh")
tags = {
Name = "Web Server"
}
}
