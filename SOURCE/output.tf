
output "vpc" {
  value = aws_vpc.vpc.id
}

output "Public_subnet" {
  value = aws_subnet.public.id
}

