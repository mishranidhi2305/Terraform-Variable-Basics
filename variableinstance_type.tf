

variable "account_id" {
    description = "The AWS account ID"
    type        = number
    default = 660961964371
}

variable "customer_name" {
    description = "The customer name for tagging"
    type        = string
    default = "Nidhir"
}

variable "instance_type" {
  description = "The AWS instance type to deploy"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
    description = "The AMI ID to use for the instance"
    type        = string
    default     = "ami-0ecb62995f68bb549"

  }
  variable "region" {
    description = "The AWS region to deploy resources in"
    type        = string
    default = "us-east-1"
  
}

variable environment {
  description = "The environment for the deployment"
  type        = string
    default     = "Dev"
}

locals {
  
  Name = "${var.customer_name}-${var.account_id}-${var.region}"
  Tag_S = "${var.environment} - ${var.customer_name} - ${var.region}"
}
