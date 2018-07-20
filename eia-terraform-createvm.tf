provider "aws" {
access_key = "AKIAIQKFPYRZQPG7M7MA"
secret_key = "iSzrPgopEp0fQfcuBwfdAouRpDW1bId+TivbSc5G"
region = "ap-southeast-1"
}
resource "aws_instance" "example4" {
  ami = "ami-03ecd8a9a905ec288"
  instance_type = "t2.micro"
  key_name = "terraformnewkey"
  security_groups = ["eia_group"]
tags {
  Name = "eiaswarmmaster4"
}
}
resource "aws_instance" "example5" {
  ami = "ami-03ecd8a9a905ec288"
  instance_type = "t2.micro"
  key_name = "terraformnewkey"
  security_groups = ["eia_group"]
tags {
  Name = "eiaswarmworker4"
}
}
