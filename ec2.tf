data "aws_ami" "ubuntu" {

  most_recent = true
  filter {
    name = "name"
    values = []
  }

  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["123456789"]
}