variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "ami" {
  type = string
  default = "ami-0cb0d18f1ee41a29b"
}

variable "server-name" {
  type = string
  default = "Staging"
}