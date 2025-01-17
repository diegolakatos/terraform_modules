output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets" {
  value = join(",", aws_subnet.public_subnets.*.id)
}

output "private_subnets" {
  value = join(",", aws_subnet.private_subnets.*.id)
}

output "vpc_security_group" {
  value = aws_security_group.vpc_security_group.id
}


output "route_table_public" {
  value = aws_route_table.public.id
}


output "route_table_private" {
  value = aws_route_table.private.id
}
