resource "aws_vpc" "main" {
  cidr_block                       = var.vpc_cidr
  assign_generated_ipv6_cidr_block = true
  tags = {
    Name = "trabajo-final-vpc"
  }
}
