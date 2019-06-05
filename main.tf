provider "aws" {
  region = "${var.aws_region}"
  version = "~> 2.13"
}

resource "aws_instance" "example" {
  connection {
    type = "ssh"
    host = "${aws_instance.example.public_dns}"
    user = "ubuntu"
    private_key = "${file(var.private_key_path)}"
  }

  instance_type = "t2.micro"

  # Ubuntu 18.04
  ami = "${var.aws_ami}"

  # test
  key_name = "${var.key_name}"

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get -y update"
    ]
  }
}
