output "vpc_id" {
  value       = opentelekomcloud_vpc_v1.nc_vpc.id
  description = "ID of the created VPC"
}

output "nat_public_ip" {
  value       = opentelekomcloud_networking_floatingip_v2.snat_public_ip.address
  description = "IP address of the public subnet"
}

output "nat_public_ip_id" {
  value       = opentelekomcloud_networking_floatingip_v2.snat_public_ip.id
  description = "ID of the floating IP of the public subnet"
}

output "nat_gateway_id" {
  value       = opentelekomcloud_nat_gateway_v2.nc_nat.id
  description = "ID of the created NAT Gateway"
}

output "public_subnet_id" {
  value       = opentelekomcloud_vpc_subnet_v1.public.id
  description = "ID of the public subnet"
}

output "private_subnet_id" {
  value       = opentelekomcloud_vpc_subnet_v1.private.id
  description = "ID of the private subnet"
}