variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  default = true
}

variable "enable_dns_support" {
  default = true
}

variable "common_tags" {
  default = {
    Project = "Roboshop"
    Environment = "Dev"
    Terraform = true
  }
}

variable "vpc_tags" {
  default = {
    Name = "Roboshop"
  }
}

variable "public_cidr" {
  default = "10.0.1.0/24"
}

variable "private_cidr" {
  default = "10.0.2.0/24"
}

variable "database_cidr" {
  default = "10.0.3.0/24"
}

variable "public_tags" {
  default = {
    Name = "Public_subnet"
  }
}

variable "private_tags" {
  default = {
    Name = "Private_subnet"
  }
}

variable "database_tags" {
 default = {
    Name = "Database_subnet"
 }
}

variable "igw_tags" {
  default = {
    Name = "Internet Gateway"
  }
}

variable "public_rt" {
  default = {
    Name = "Public_route"
  }
}

variable "private_rt" {
   default = {
    Name = "Private_route"
  }
}

variable "database_rt" {
   default = {
    Name = "Database_route"
  }
}