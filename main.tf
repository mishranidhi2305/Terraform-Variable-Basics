

// Define AWS instance resource

  resource "aws_instance" "instance" {
    instance_type = var.instance_type

  // Use the AMI ID from variableami_id.tf and region from variableinstance_type.tf
    ami           = var.ami_id
    region        = var.region

  
    tags = {
      Name = "${var.customer_name}-${var.account_id}-${var.region}"
      environment = var.environment
    }
}



resource "aws_vpc" "vpctest" {
  cidr_block = "10.0.0.0/28"
  region     = var.region
  tags = {
    Name = "tf-example-vpc"
    environment = var.environment

    
  }
  
}