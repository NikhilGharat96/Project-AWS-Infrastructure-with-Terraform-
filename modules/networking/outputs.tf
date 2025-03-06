output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.myvpc.id
}

output "subnet1_id" {
  description = "Subnet 1 ID"
  value       = aws_subnet.subnet1.id
}

output "subnet2_id" {
  description = "Subnet 2 ID"
  value       = aws_subnet.subnet2.id
}