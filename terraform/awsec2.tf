provider "aws" {
access_key = "AKIA3XO5MCGMU3OXN7FB"
secret_key = "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"
region = "us-east-2"
}

resource "aws_instance" "webserver" {
ami = "ami-00399ec92321828f5"
instance_type = "t2.medium"
tags = {
  Name = "terraform-server"
  Env  = "dev"
}

}

