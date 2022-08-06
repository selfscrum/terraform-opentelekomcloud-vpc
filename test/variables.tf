variable "stage" {
  type        = string
  description = "Project qualifier for tags an unique resource names"
  default     = "test-vpc"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block of the public subnet"
  default     = "10.0.0.0/8"
}

variable "public_cidr" {
  type        = string
  description = "CIDR block of the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_cidr" {
  type        = string
  description = "CIDR block of the private subnet"
  default     = "10.0.0.0/24"
}
