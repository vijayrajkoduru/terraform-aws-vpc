resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  instance_tenancy     = "default"

  #expense-dev
  tags = merge(
    var.common_tags,
    var.vpc_tags,
    {
      Name = local.resource_name
    }

  )

}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    var.common_tags,
    var.igw_tags,
    {
      Name = local.resource_name
    }
  )
}
