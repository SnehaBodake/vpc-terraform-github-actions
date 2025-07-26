variable "sg_id"{
    description = "SG ID for ALB"
    type = string
}

variable "subnets" {
    description = "List of subnet IDs for ALB"
    type = list(string)
}

variable "vpc_id" {
    description = "VPC ID for ALB"
    type = string
}

variable "instances" {
    description = "List of EC2 instance IDs to attach to the ALB"
    type = list(string)
}