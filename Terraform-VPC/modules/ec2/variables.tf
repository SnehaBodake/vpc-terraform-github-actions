variable "sg_id" {
  description = "Security Group ID for the EC2 instance"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs for the EC2 instance"
  type        = list(string)
}

variable "ec2_names" {
  description = "List of names for the EC2 instances"
  type        = list(string)
  default     = ["WebServer1", "WebServer2"]
}