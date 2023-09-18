provider "aws" {
region = "us-east-1"
access_key = "AKIASHQNVTHBPDO5PXPI"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-0f844a9675b22ea32"
instance_type = "t2.micro"
key_name = "newpair"
vpc_security_group_ids = [aws_security_group.project-SG]
tags = {
Name = "project-instance"
}
}

