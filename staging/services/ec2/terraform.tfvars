instance_type = "${instance_type}"
ami = "${ami}"
key_pair_name = "${key_pair_name}"
server_name = "${server_name}"

# Root EBS Volume variables
root_disk_volume_type = "${root_disk_volume_type}"
root_disk_volume_size = "${root_disk_volume_size}"
root_disk_delete_on_termination = "${root_disk_delete_on_termination}"
root_disk_encrypted = "${root_disk_encrypted}"

# Extra EBS Volume variables
#variable "lifecycle_create_before_destroy" {}
add_extra_volume = "${add_extra_volume}"
add_extra_volume_device_name = "${add_extra_volume_device_name}"
add_extra_volume_volume_type = "${add_extra_volume_volume_type}"
add_extra_volume_volume_size = "${add_extra_volume_volume_size}"
add_extra_volume_delete_on_termination = "${add_extra_volume_delete_on_termination}"
