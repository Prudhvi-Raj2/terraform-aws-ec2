terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
   backend "s3"{
      bucket = "kambalas.shopprudhvi"
      key    = "terraform-module" # you should have unique key, same cannot use in other repos
      region = "us-east-1"
      dynamodb_table = "kambalas.shopPrudhvi"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}