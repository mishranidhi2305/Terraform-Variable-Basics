terraform {

  // Initialize the S3 backend to store the Terraform state file

    backend "s3" {

  // this bucket is already created manually in AWS S3,
  // as the backend requires it to be pre-existing

    bucket = "nidhi-bucket660961964371"
    key    = "terraform/state/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

// Configure the AWS Provider to use the var.region variable
provider "aws" {
  region = var.region
}
