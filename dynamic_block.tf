resource "aws_security_group" "sgmultiport" {
  name = "Dynamic Port"

  dynamic "ingress" {
    for_each = var.allports
    iterator = port
    content {
      from_port = port.value
      to_port = port.value
      protocol = "tcp"
      cidr_blocks = [var.cidrIp]
    }
  }
  tags = {
    name:"Dynamic Block Demo"
  }
}