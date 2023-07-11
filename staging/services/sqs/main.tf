terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Staging region
  access_key = ""
  secret_key = ""
}

module "sns" {
  source = "../../../modules/services/sqs"
  sqs_queues = var.sqs_queues
}
