provider "aws" {
  region = "us-east-1"
}

variable "name" {
  description = "Name the instance on deploy"
}
resource "aws_instance" "devops_01_jenkins" {
  ami = "ami-013f17f36f8b1fefb"
  instance_type = "t2.micro"
  key_name = "devops_key"

  tags = {
    Name = var.name
  }
}