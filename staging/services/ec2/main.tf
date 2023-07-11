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

module "ec2" {
  source = "../../../modules/services/ec2"
  instance_type = var.instance_type
  ami = var.ami
  key_pair_name = var.key_pair_name
  server_name = var.server_name
  root_disk_volume_type = var.root_disk_volume_type
  root_disk_volume_size = var.root_disk_volume_size
  root_disk_delete_on_termination = var.root_disk_delete_on_termination
  root_disk_encrypted = var.root_disk_encrypted
  #lifecycle_create_before_destroy = var.lifecycle_create_before_destroy
  add_extra_volume = var.add_extra_volume
  add_extra_volume_device_name = var.add_extra_volume_device_name
  add_extra_volume_volume_type = var.add_extra_volume_volume_type
  add_extra_volume_volume_size = var.add_extra_volume_volume_size
  add_extra_volume_delete_on_termination = var.add_extra_volume_delete_on_termination
}



#module "iam" {
#  source = "../../../modules/services/iam"
#}
