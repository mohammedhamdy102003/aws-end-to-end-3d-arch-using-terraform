terraform {
  required_version = ">=1.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }
  }
  backend "s3"{
    bucket         = "my-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "my-terraform-lock-table"
    encrypt        = true
  }
}
provider "aws" {
    region= var.region 
    default_tags {
      tags={
        Environment = var.environment
        Project     = var.project
      }
    }
}


