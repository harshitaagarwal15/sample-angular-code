variable "region" {
  description = "AWS region"
  type        = string
}

variable "minikube_type" {
  description = "instance type"
  type        = string
}

variable "container_type" {
  description = "instance type"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block of the vpc"
  type        = string
}

variable "public_subnets_cidr" {
  type        = string
  description = "CIDR block for Public Subnet"
}

variable "private_subnets_cidr" {
  type        = string
  description = "CIDR block for Private Subnet"
}

variable "availability_zone" {
  type        = string
  description = "AZ in which all the resources will be deployed"
}

variable "port" {
  description = "Port to be expose"
  type        = list(number)
}