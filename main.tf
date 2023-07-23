provider "aws" {
region = "us-east-1"
access_key = "AKIAZUZOHD2I7HNXAEVY"
secret_key = "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"

}

resource "aws_instance" "one" {
ami = "ami-04823729c75214919"
instance_type = var.instance_type
key_name = "Surabhi"
vpc_security_group_ids = "vpc-06fc4027148f2f672"
tags = {
Name = var.instance_name_1
}
}

resource "aws_instance" "two" {
ami = "ami-04823729c75214919"
instance_type = var.instance_type
key_name = "Surabhi"
vpc_security_group_ids = "vpc-06fc4027148f2f672"
tags = {
Name = var.instance_name_2
}
}

resource "aws_instance" "three" {
ami = "ami-04823729c75214919"
instance_type = var.instance_type
key_name = "Surabhi"
vpc_security_group_ids = "vpc-06fc4027148f2f672"
tags = {
Name = var.instance_name_3
}
}

variable "instance_type" {

}

variable "instance_name_1" {

}

variable "instance_name_2" {

}

variable "instance_name_3" {

}

