variable "stage" {
  type = string
  description = "Project qualifier for tags an unique resource names"
}

variable "vpc_cidr" {
  type = string
  description = "CIDR block of the public subnet"
}

variable "public_cidr" {
  type = string
  description = "CIDR block of the public subnet"
}

variable "private_cidr" {
  type = string
  description = "CIDR block of the private subnet"
}
