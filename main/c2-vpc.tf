# Resource Block
# Create VPC

resource "aws_vpc" "saurabh_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Saurabh_VPC_1"
  }
}