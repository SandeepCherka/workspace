provider "aws" {
region = "ap-south-1"
access_key = "AKIAZUZOHD2I7HNXAEVY"
secret_key = "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"
}

locals {
instance_name = "${terraform.workspace}-instance"
}
resource "aws_instance" "one" {
ami = "ami-006935d9a6773e4ec"
instance_type = "t2.micro"
key_name = "mumbaikey"
vpc_security_group_ids = [aws_security_group.two.id]
tags = {
Name = local.instance_name
}
}
