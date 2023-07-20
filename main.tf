provider "aws" {
region = "us-east-1"
Access_Key = "AKIAUDMAH6OF6P6U4BYG"
secret_key = "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"

}

resource "aws_instance" "one" {
ami = "ami-04823729c75214919"
instance_type = var.instance_type
key_name = "N.virginiaKey"
vpc_security_group_ids = [aws_security_group.four.id]
tags = {
Name = var.instance_name_1
}
}

resource "aws_instance" "two" {
ami = "ami-04823729c75214919"
instance_type = var.instance_type
key_name = "N.virginiaKey"
vpc_security_group_ids = [aws_security_group.four.id]
tags = {
Name = var.instance_name_2
}
}

resource "aws_instance" "three" {
ami = "ami-04823729c75214919"
instance_type = var.instance_type
key_name = "N.virginiaKey"
vpc_security_group_ids = [aws_security_group.four.id]
tags = {
Name = var.instance_name_3
}
}

resource "aws_security_group" "four" {
  name = "elb-sg"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
