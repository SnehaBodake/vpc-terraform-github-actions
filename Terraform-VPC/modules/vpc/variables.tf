variable "vpc_cidr" {
    description = "VPC CIDR range"
    type        = string  
}

variable "subnet_cidr" {
    description = "Subnet CIDRS"
    type = list(string)
}

variable "subnet_names" {
    description = "Subnet Names"
    type = list(string)
    default = [ "PublicSubnet1", "PublicSubnet2" ]
}