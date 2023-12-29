output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet.id
}
output "another_private_subnet_id" {
  value = aws_subnet.another_private_subnet.id
}
