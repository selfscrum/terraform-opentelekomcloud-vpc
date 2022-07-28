output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID of the created VPC"
}

output "vpc_cidr" {
  value       = module.vpc.vpc_cidr
  description = "CIDR of the created VPC"
}

output "vpc_status" {
  value       = module.vpc.vpc_status
  description = "Status of the created VPC"
}

output "nat_public_ip" {
  value       = module.vpc.nat_public_ip
  description = "IP address of the public subnet"
}

output "nat_public_ip_id" {
  value       = module.vpc.nat_public_ip_id
  description = "ID of the floating IP of the public subnet"
}

output "nat_gateway_id" {
  value       = module.vpc.nat_gateway_id
  description = "ID of the created NAT Gateway"
}

output "public_subnet_id" {
  value       = module.vpc.public_subnet_id
  description = "ID of the public subnet"
}

output "public_subnet_cidr" {
  value       = module.vpc.public_subnet_cidr
  description = "CIDR of the created public_subnet"
}
output "public_subnet_status" {
  value       = module.vpc.public_subnet_status
  description = "Status of the created public_subnet"
}

output "private_subnet_id" {
  value       = module.vpc.private_subnet_id
  description = "ID of the private subnet"
}

output "private_subnet_cidr" {
  value       = module.vpc.private_subnet_cidr
  description = "CIDR of the created private_subnet"
}

output "private_subnet_status" {
  value       = module.vpc.private_subnet_status
  description = "Status of the created private_subnet"
}
