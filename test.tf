provider "aws" {
      region = "us-east-1"

}

resource "aws_vpc" "New_VPC" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
tags {
  Name = "New_VPC"
}

}

resource "aws_subnet" "enyota" {
  vpc_id     = "${aws_vpc.New_VPC.id}"
  cidr_block = "10.0.1.0/24"

  tags {
    Name = "enyota"
  }
}

