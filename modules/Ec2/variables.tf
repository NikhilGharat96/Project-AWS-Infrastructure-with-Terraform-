variable "ami" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  type        = string
  default = "t2.micro"
}

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
