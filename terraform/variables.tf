variable "aws_region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR para la VPC (IPv4)"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR para la subred pública"
  type        = string
  default     = "10.0.0.0/18"
}

variable "private_subnet_cidr" {
  description = "CIDR para la subred privada"
  type        = string
  default     = "10.0.64.0/18"
}
