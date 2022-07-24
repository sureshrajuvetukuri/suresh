/* provider "aws" {
access_key = "AKIAX5UIDW6QMFHJ6ZUX"
secret_key = "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"
region = "ap-south-1"
}

resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
        name = "my-vpc"
    }
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.1.0/24"
    
    tags = {
        name = "private"
    }
}

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.2.0/24"
    
    tags = {
        name = "public"
    }
} */