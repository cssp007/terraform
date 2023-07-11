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
  access_key = "AAKKIA4IZTCHQPSHNIEPV78"
  secret_key = "omnsSvKKbXWFOhzixNsS1LC/sQtlHmbRWeCLpnGXiI"
}

module "sns" {
  source = "../../../modules/services/sqs"
  sqs_queues = var.sqs_queues
}
