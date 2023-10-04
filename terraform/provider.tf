# PROVIDER
terraform {

  required_version = "~> 1.5.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.13"
    }
  }

  backend "s3" {
    bucket         = "tf-terraform-hello-world-state-uriel1"
    key            = "terraform.tfstate"
    dynamodb_table = "dynamo-uriel1"
    region         = "us-east-1"
  }

}
