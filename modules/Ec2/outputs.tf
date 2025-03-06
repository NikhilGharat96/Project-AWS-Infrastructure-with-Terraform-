# return instance id

output "web1_instance_id" {
  value = aws_instance.webserver-1.id
}

output "web2_instance_id" {
  value = aws_instance.webserver-2.id
}

#return public ip
output "web1_public_ip" {
  value = aws_instance.webserver-1.public_ip
}

output "web2_public_ip" {
  value = aws_instance.webserver-2.public_ip
}