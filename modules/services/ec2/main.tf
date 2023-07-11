resource "aws_instance" "ec2" {
  count = length(var.server_name)
  ami           = var.ami[count.index]
  instance_type = var.instance_type[count.index]
  key_name = var.key_pair_name[count.index]
  root_block_device {
    volume_type           = var.root_disk_volume_type[count.index]     # Specify the volume type (e.g., gp2, io1, st1, sc1)
    volume_size           = var.root_disk_volume_size[count.index]        # Specify the root volume size in GB
    delete_on_termination = var.root_disk_delete_on_termination[count.index]      # Delete the volume when the instance is terminated
    encrypted             = var.root_disk_encrypted[count.index]      # Enable encryption for the volume (optional)
  }
  # Conditionally create an extra EBS volume
  lifecycle {
    create_before_destroy = false
  }

  dynamic "ebs_block_device" {
    for_each = var.add_extra_volume ? [1] : []
    content {
      device_name = var.add_extra_volume_device_name[count.index]
      volume_type = var.add_extra_volume_volume_type[count.index]
      volume_size = var.add_extra_volume_volume_size[count.index]
      delete_on_termination = var.add_extra_volume_delete_on_termination[count.index]
    }
  }

  tags = {
    Name = var.server_name[count.index]
  }
}