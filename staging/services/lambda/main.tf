terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "lambda" {
  source = "../../../modules/services/lambda"
  lambda_zip_locations = var.lambda_zip_locations
  source_file_path = var.source_file_path
  function_name = var.function_name
  handler_name = var.handler_name
}
