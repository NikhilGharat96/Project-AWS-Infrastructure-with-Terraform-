variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet-1_id" {
  description = "Subnet 1 ID"
  type        = string
}

variable "subnet-2_id" {
  description = "Subnet 2 ID"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID"
  type        = string
}

variable "ec2_instance_ids" {
  description = "List of EC2 instance IDs"
  type        = list(string)
}