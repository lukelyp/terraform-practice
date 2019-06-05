variable "aws_ami" {
  default = "ami-024a64a6685d05041"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "key_name" {
  default = "terraform"
}

variable "private_key_path" {
  description = "SSH private key path"
}
