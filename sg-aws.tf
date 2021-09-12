resource "aws_security_group" "variableLab" {
  name = "demoTfVariable"

  ingress {
    from_port = 443
    protocol = "tcp"
    to_port = 443
    cidr_blocks = [var.cidrIp]
  }

  ingress {
    from_port = 80
    protocol = "http"
    to_port = 80
    cidr_blocks = [var.cidrIp]
  }

}