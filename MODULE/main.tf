module "vpc_creation" {
  source = "../SOURCE"
  cidr_block = var.cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
  public_cidr = var.public_cidr
  private_cidr = var.private_cidr
  database_cidr = var.database_cidr
  public_tags = var.public_tags
  private_tags = var.private_tags
  database_tags = var.database_tags
  igw_tags = var.igw_tags
  public_rt = var.public_rt
  private_rt = var.private_rt
  database_rt = var.database_rt
}