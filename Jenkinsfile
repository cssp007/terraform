pipeline {
  agent any
  stages {
    stege "Update tfvars file" {
      steps {
        sh 'cd staging/services/ec2/'
        sh 'sed -i "s/update_instance_type/${instance_type}/g" terraform.tfvars'
        sh 'sed -i "s/update_ami/${ami}/g" terraform.tfvars'
        sh 'sed -i "s/update_key_pair_name/${key_pair_name}/g" terraform.tfvars'
        sh 'sed -i "s/update_server_name/${server_name}/g" terraform.tfvars'
        sh 'sed -i "s/update_root_disk_volume_type/${root_disk_volume_type}/g" terraform.tfvars'
        sh 'sed -i "s/update_root_disk_volume_size/${root_disk_volume_size}/g" terraform.tfvars'
        sh 'sed -i "s/update_root_disk_delete_on_termination/${root_disk_delete_on_termination}/g" terraform.tfvars'
        sh 'sed -i "s/update_root_disk_encrypted/${root_disk_encrypted}/g" terraform.tfvars'
        sh 'sed -i "s/update_add_extra_volume_device_name/${add_extra_volume_device_name}/g" terraform.tfvars'
        sh 'sed -i "s/update_add_extra_volume_volume_type/${add_extra_volume_volume_type}/g" terraform.tfvars'
        sh 'sed -i "s/update_add_extra_volume_volume_size/${add_extra_volume_volume_size}/g" terraform.tfvars'
        sh 'sed -i "s/update_add_extra_volume_delete_on_termination/${add_extra_volume_delete_on_termination}/g" terraform.tfvars'
        sh 'sed -i "s/update_add_extra_volume/${add_extra_volume}/g" terraform.tfvars'
      }
    }
  stage "Terraform init" {
    steps {
      sh 'terraform init'
    }
  }
  stage "Terraform init" {
    steps {
      sh 'terraform plan'
    }
  }  
  }
}
