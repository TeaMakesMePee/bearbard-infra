terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
    backend "s3" {
      bucket         = "bearbard-tfstate-faizal"
      key            = "bearbard/terraform.tfstate"
      region         = "ap-southeast-1"
      use_lockfile = true
      encrypt        = true
    }
}

provider "aws" {
    region = "ap-southeast-1"
}

