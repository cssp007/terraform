instance_type = ["t2.micro", "t3.micro"]
ami = ["ami-0f5ee92e2d63afc18", "ami-08e5424edfe926b43"]
key_pair_name = ["abc.pem", "xyz.pem"]
server_name = ["server-one", "server-two"]

# Root EBS Volume variables
root_disk_volume_type = ["gp3", "gp2"]
root_disk_volume_size = [30, 50]
root_disk_delete_on_termination = [true, true]
root_disk_encrypted = [true, true]

# Extra EBS Volume variables
#variable "lifecycle_create_before_destroy" {}
add_extra_volume = false
add_extra_volume_device_name = ["/dev/sdf", "/dev/sdg"]
add_extra_volume_volume_type = ["gp3", "gp2"]
add_extra_volume_volume_size = [10, 20]
add_extra_volume_delete_on_termination = [true, true]
