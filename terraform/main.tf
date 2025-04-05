provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYHHGE4VOUPDHLTIR"
  secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-00a929b66ed6e0de6"
instance_type = "t2.micro"
key_name = "jenkinskey"
count = 1
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
