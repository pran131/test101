resource "aws_vpc" "myVPC" {
  cidr_block       = var.cidr
  instance_tenancy = "default"

  tags = {
    Name = "Test_Env"
  }
}