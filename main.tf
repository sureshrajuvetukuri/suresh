provider "aws" {
access_key = "AKIAX5UIDW6QJ3FXIIFJ"
secret_key = "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"
region = "ap-south-1"
}

resource "aws_instance" "dev" {
    count = 0
    ami = "ami-08df646e18b182346"
    instance_type = "t2.micro"
    tags = {
        Name = "dev-server ${count.index+1}"
        Environment = "development"
    }
}

resource "aws_instance" "prod" {
    count = 1
    ami = "ami-08df646e18b182346"
    instance_type = "t2.micro"
    tags = {
        Name = "prod-server ${count.index+1}"
        Environment = "prod"
    }
}

/* resource "aws_s3_bucket" "b1" {
  bucket = "my-tf-test-bucket-suresh-raju"
  tags = {
    Name        = "My bucket suresh"
    Environment = "Dev"
  }
} */