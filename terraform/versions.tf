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
    bucket = "terraform-new-env"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
  required_version = "1.3.0"
}
