# Resource Block
# create vpc in us-west-1 region

resource "aws_vpc" "saurabh_west_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  provider = aws.aws-west-1

  tags = {
    Name = "Saurabh_West_VPC_2"
  }
}