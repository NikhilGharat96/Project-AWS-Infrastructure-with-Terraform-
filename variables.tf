variable "ami" {
    type = string
    default = "ami-04b4f1a9cf54c11d0"

  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "bucket_name" {
    type = string
    default = "niksteraformbucket012"
  
}

variable "subnet-1_cidr" {
    type = string
    default = "10.0.0.0/24"
  
}

variable "subnet-2_cidr" {
    type = string
    default = "10.0.1.0/24"
  
}

variable "cidr" {
    type = string
    default = "10.0.0.0/16"
  
}

variable "availability_zones" {
    type = list(string)
    default = ["us-east-1a", "us-east-1b"]
  
}