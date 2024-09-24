variable "region" {
    type = string
    default = "ap-south-1"
}

variable "vpc_name" {
    type = string
    default = "aws devops project vpc"
}

variable "cidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "avilability_zone" {
    type = list(string)
    default = ["ap-south-1a", "ap-south-1b"]
}

variable "private_subnets" {
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
    type = list(string)
    default = ["10.0.50.0/16", "10.0.51.0/24"]
}
