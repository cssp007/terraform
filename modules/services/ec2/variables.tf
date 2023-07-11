variable "instance_type" {
  type = list(string)
}

variable "ami" {
  type = list(string)
}

variable "server_name" {
  type = list(string)
}

variable "key_pair_name" {
  type = list(string)
}

variable "root_disk_volume_type" {
  type = list(string)
}

variable "root_disk_volume_size" {
  type = list(number)
}

variable "root_disk_delete_on_termination" {
  type = list(bool)
}

variable "root_disk_encrypted" {
  type = list(bool)
}

#variable "lifecycle_create_before_destroy" {
#  type =  bool
#}

variable "add_extra_volume" {
  type = bool
}

variable "add_extra_volume_device_name" {
  type = list(string)
}

variable "add_extra_volume_volume_type" {
  type = list(string)
}

variable "add_extra_volume_volume_size" {
  type = list(number)
}

variable "add_extra_volume_delete_on_termination" {
  type = list(bool)
}