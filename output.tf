output vpc_id {
  value = opentelekomcloud_vpc_v1.nc_vpc.id
}

output "nat_public_ip" {
  value = opentelekomcloud_networking_floatingip_v2.snat_public_ip.address
}

output "nat_gateway_id" {
  value = opentelekomcloud_nat_gateway_v2.nc_nat.id
}

output "public_subnet_id" {
  value = opentelekomcloud_vpc_subnet_v1.public.id
}

output "private_subnet_id" {
  value = opentelekomcloud_vpc_subnet_v1.private.id
}