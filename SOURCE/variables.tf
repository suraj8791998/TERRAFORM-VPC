variable "cidr_block" {
  #default = "10.0.0.0/16"
}

variable "common_tags" {
  type = map 
}

variable "vpc_tags" {
 
}

variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true
}

variable "public_cidr" {
  #default = "10.0.1.0/24"
}

variable "public_tags" {
 
}
variable "private_cidr" {
  
}
variable "private_tags" {
 
}

variable "database_cidr" {
  
}

variable "database_tags" {
 
}

variable "igw_tags" {
  
}

variable "public_rt" {
  
}
variable "private_rt" {
  
}

variable "database_rt" {
  
}