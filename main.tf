module "Networking" {
  source             = "./modules/Networking"
  cidr               = var.cidr
  subnet-1_cidr       = var.subnet-1_cidr
  subnet-2_cidr       = var.subnet-2_cidr
  availability_zones = var.availability_zones
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.Networking.vpc_id
}

module "Ec2" {
  source            = "./modules/Ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  vpc_id            = module.Networking.vpc_id
  subnet-1_id        = module.Networking.subnet1_id
  subnet-2_id        = module.Networking.subnet2_id
  security_group_id = module.security_group.security_group_id
}

module "load_balancer" {
  source            = "./modules/load_balancer"
  vpc_id            = module.Networking.vpc_id
  subnet-1_id        = module.Networking.subnet1_id
  subnet-2_id        = module.Networking.subnet2_id
  security_group_id = module.security_group.security_group_id
  ec2_instance_ids  = [module.Ec2.web1_instance_id, module.Ec2.web2_instance_id]
}

module "s3_bucket" {
  source      = "./modules/s3_bucket"
  bucket_name = var.bucket_name
}

# return loadbalncer dns
output "loadbalancer_dns" {
  value = module.load_balancer.dns_name
}

# return instance id
output "web1_instance_id" {
  value = module.Ec2.web1_instance_id
}

output "web2_instance_id" {
  value = module.Ec2.web2_instance_id
}

#return public ip
output "web1_public_ip" {
  value = module.Ec2.web1_public_ip
}

output "web2_public_ip" {
  value = module.Ec2.web2_public_ip
}