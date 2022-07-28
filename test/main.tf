terraform {
  required_version = ">= 0.12.26"
}

variable access_key {}
variable secret_key {}
variable domain_name {}
variable tenant_name {}

provider "opentelekomcloud" {
  access_key  = var.access_key
  secret_key  = var.secret_key
  domain_name = var.domain_name
  tenant_name = var.tenant_name
  auth_url    = "https://iam.eu-de.otc.t-systems.com/v3"
}

module "vpc" {
  source       = "app.terraform.io/selfscrum/vpc/opentelekomcloud"
  version      = "0.1.2"
  stage        = var.stage
  vpc_cidr     = var.vpc_cidr
  public_cidr  = var.public_cidr
  private_cidr = var.private_cidr
}
