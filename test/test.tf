terraform {
  required_version = ">= 0.12.26"
}

provider "opentelekomcloud" {
  access_key  = var.access_key
  secret_key  = var.secret_key
  domain_name = var.domain_name
  tenant_name = var.tenant_name
  auth_url    = "https://iam.eu-de.otc.t-systems.com/v3"
  alias = "opentelekomcloud-vpc-test"
}

module "vpc" {
  source  = "app.terraform.io/selfscrum/vpc/opentelekomcloud"
  version = "0.1.0"
}

