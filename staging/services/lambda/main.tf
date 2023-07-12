terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

module "lambda" {
  source = "../../../modules/services/lambda"
}
