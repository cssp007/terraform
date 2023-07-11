variable "instance_type" {}
variable "ami" {}
variable "key_pair_name" {}
variable "server_name" {}

# Root EBS Volume variables
variable "root_disk_volume_type" {}
variable "root_disk_volume_size" {}
variable "root_disk_delete_on_termination" {}
variable "root_disk_encrypted" {}

# Extra EBS Volume variables
#variable "lifecycle_create_before_destroy" {}
variable "add_extra_volume" {}
variable "add_extra_volume_device_name" {}
variable "add_extra_volume_volume_type" {}
variable "add_extra_volume_volume_size" {}
variable "add_extra_volume_delete_on_termination" {}
