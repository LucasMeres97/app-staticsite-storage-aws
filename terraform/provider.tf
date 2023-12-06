# PROVIDER
terraform {

  required_version = "~> 1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.55"
    }
  }

  backend "s3" {
    bucket         = "bucketkledin"
    key            = "terraform.tfstate"
    dynamodb_table = "tf-staticsite-s3-state-v1"
    region         = "us-east-1"
  }

}

provider "aws" {
  region                   = "us-east-1"
  # shared_config_files      = ["~/.aws/config"]
  # shared_credentials_files = ["~/.aws/credentials"]
  # profile                  = "fiap"
}

<<<<<<< HEAD
=======









>>>>>>> 7ca945342480109c3acb52b6b8bc44f0f61e5465
