provider "aws" {
access_key = "AKIAJRYMHPAVL32LAP4A"
secret_key = "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"
region = "ap-south-1"
}
resource "aws_instance" "terraformtesting" {
ami = "ami-76d6f519"
instance_type = "t2.micro"
tags {
Name = "terraformInstance"
}
}
