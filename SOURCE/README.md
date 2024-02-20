### VPC CREATION

This module is going to create 

* VPC
* PRIVATE SUBNET
* PUBLIC SUBNET
* DATABASE SUBNET
* INTERNET GATEWAY 
* INTERNET GATEWAY ASSOSICATION WITH VPC
* ROUTE TABLE
* ROUTE TABLE ASSOSICATION WITH SUBNETS


### INPUTS


* cidr_block (required) - USER SHOULD PROVIDE CIDR-BLOCK
* enable_dns_support - DEAFULT IS TRUE
* enable_dns_hostnames - DEFAULT IS TRUE
* common_tags(optinal) - THESE ARE OPTIONAL
* vpc_tags(optional) - THESE ARE OPTIONAL
* public_cidr(required) - USER SHOULD PROVIDE PUBLIC CIDR BLOCK
* private_cidr(required)
* public_tags - OPTIONAL
* private_tags - OPTIONAL
* igw_tags - OPTIONAL
