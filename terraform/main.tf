this is the code to write and save in local repo and navigate to file by 
using its path and init vatidate plan apply 
if you want to delete destory


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "ca-central-1"
  access_key = "AKIA54UUHMQYFNZD6RX2"
  secret_key = "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"
}

resource "aws_instance" "myinstance01" {
  ami           = "ami-014f9afa9eac4451e"
  instance_type = "t2.micro"
  count = "1"


  tags = {
    Name = "Server_1-w1"
  }

}
resource "aws_instance" "myinstance02" {
  ami           = "ami-0e72d862f0399a84c"
  instance_type = "t2.micro"
  count = "1"

  tags ={
    Name = "Server_2-w1"
  }

}
