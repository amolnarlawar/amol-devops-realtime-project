terraform {
  backend "s3" {
    bucket         = "amol-eks-state"
    region         = "us-east-1"
    key            = "terraform.tfstate"
    dynamodb_table = "Amol-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
