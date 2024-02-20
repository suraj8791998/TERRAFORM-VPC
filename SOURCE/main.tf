resource "aws_vpc" "vpc" {
  cidr_block       = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support

  tags = merge(
      var.common_tags,
      var.vpc_tags
  )
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.public_cidr

  tags = merge(
      var.common_tags,
      var.public_tags
  )
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.private_cidr

  tags = merge(
      var.common_tags,
      var.private_tags
  )
}

resource "aws_subnet" "database" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.database_cidr

  tags = merge(
      var.common_tags,
      var.database_tags
  )
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

 tags = merge(
      var.common_tags,
      var.igw_tags
  )
}

resource "aws_internet_gateway_attachment" "igw" {
  internet_gateway_id = aws_internet_gateway.igw.id
  vpc_id              = aws_vpc.vpc.id
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = merge(
      var.common_tags,
      var.public_rt
  )
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.vpc.id

  tags = merge(
      var.common_tags,
      var.private_rt
  )
}

resource "aws_route_table" "database" {
  vpc_id = aws_vpc.vpc.id

  tags = merge(
      var.common_tags,
      var.database_rt
  )
}

resource "aws_main_route_table_association" "public" {
  vpc_id         = aws_vpc.vpc.id
  route_table_id = aws_route_table.public.id
}

resource "aws_main_route_table_association" "private" {
  vpc_id         = aws_vpc.vpc.id
  route_table_id = aws_route_table.private.id
}

resource "aws_main_route_table_association" "database" {
  vpc_id         = aws_vpc.vpc.id
  route_table_id = aws_route_table.database.id
}
