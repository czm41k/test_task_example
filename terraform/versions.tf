terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
  backend "s3" {
    bucket = "czm41k-terraform-state"
    key    = "terraform.tfstate"
    region = "us-west-1"
    dynamodb_table = "czm41k-terraform-state-lock"
  }
  required_version = "1.3.0"
}
