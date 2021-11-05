# Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

# variable "instance_type" {
#   description = "EC2 Instance Type - Instance Sizing"
#   type        = string
#   default     = "t2.micro"

# }

variable "aws_az1" {  
  type        = string
  default     = "us-east-1a"
}

variable "aws_az2" {  
  type        = string
  default     = "us-east-1b"
}