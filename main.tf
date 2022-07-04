resource "aws_vpc" "myVPC" {
  cidr_block       = var.cidr
  instance_tenancy = "default"

  tags = {
    Name = "Test_Env"
  }
}

resource "aws_cloudtrail" "cloudtrail101" {
  name                          = var.cloudtrailname
  s3_bucket_name                = "tfstatebycket"
  s3_key_prefix                 = "logs"
  include_global_service_events = false
}