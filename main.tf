terraform {
  required_version = ">= 0.12.1"
}

provider "aws" {
  version = "~> 2.0"
  region  = "${var.region}"
}

resource "tls_private_key" "hashicat" {
  algorithm = "RSA"
}

locals {
  private_key_filename = "hashicat-ssh-key.pem"
}

resource "null_resource" "create-ssh" {
  provisioner "local-exec" {
    command = "echo \"${tls_private_key.hashicat.private_key_pem}\" > ${local.private_key_filename}"
  }

  provisioner "local-exec" {
    command = "chmod 600 ${local.private_key_filename}"
  }
}

resource "aws_key_pair" "hashicat" {
  key_name   = "${local.private_key_filename}"
  public_key = "${tls_private_key.hashicat.public_key_openssh}"
}

resource "aws_vpc" "hashicat" {
  cidr_block           = "${var.address_space}"
  enable_dns_hostnames = false

  tags = {
    Name = "${var.prefix}-vpc"
  }
}

resource "aws_subnet" "hashicat" {
  vpc_id     = "${aws_vpc.hashicat.id}"
  cidr_block = "${var.subnet_prefix}"

  tags = {
    name = "${var.prefix}-subnet"
  }
}

resource "aws_security_group" "hashicat" {
  name = "${var.prefix}-security-group"

  vpc_id = "${aws_vpc.hashicat.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    prefix_list_ids = []
  }

  tags = {
    Name = "${var.prefix}-security-group"
  }
}

resource "aws_eip" "hashicat" {
  instance = "${aws_instance.hashicat.id}"
  vpc      = true

  tags = {
    Name = "${var.prefix}-elastic-ip"
  }
}

resource "aws_internet_gateway" "hashicat" {
  vpc_id = "${aws_vpc.hashicat.id}"

  tags = {
    Name = "${var.prefix}-internet-gateway"
  }
}

resource "aws_route_table" "hashicat" {
  vpc_id = "${aws_vpc.hashicat.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.hashicat.id}"
  }
}

resource "aws_route_table_association" "hashicat" {
  subnet_id      = "${aws_subnet.hashicat.id}"
  route_table_id = "${aws_route_table.hashicat.id}"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "hashicat" {
  ami                         = "${data.aws_ami.ubuntu.id}"
  instance_type               = "${var.instance_type}"
  key_name                    = "${aws_key_pair.hashicat.key_name}"
  associate_public_ip_address = true
  subnet_id                   = "${aws_subnet.hashicat.id}"
  vpc_security_group_ids      = ["${aws_security_group.hashicat.id}"]

  tags = {
    Name = "${var.prefix}-hashicat-instance"
  }
}

# We're using a little trick here so we can run the provisioner without
# destroying the VM. Do not do this in production.

# If you need ongoing management (Day N) of your virtual machines a tool such
# as Chef or Puppet is a better choice. These tools track the state of
# individual files and can keep them in the correct configuration.

# Here we do the following steps:
# Sync everything in files/ to the remote VM.
# Set up some environment variables for our script.
# Add execute permissions to our scripts.
# Run the deploy_app.sh script.
resource "null_resource" "configure-cat-app" {
  depends_on = [
    "aws_instance.hashicat",
  ]

  # Terraform 0.11
  # triggers {
  #   build_number = "${timestamp()}"
  # }

  # Terraform 0.12
  triggers = {
    build_number = "${timestamp()}"
  }
  provisioner "file" {
    source      = "files/"
    destination = "/home/ubuntu/"

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${tls_private_key.hashicat.private_key_pem}"
      host        = "${aws_eip.hashicat.public_ip}"
    }
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt -y install apache2",
      "sudo systemctl start apache2",
      "sudo chown -R ubuntu:ubuntu /var/www/html",
      "chmod +x *.sh",
      "PLACEHOLDER=${var.placeholder} WIDTH=${var.width} HEIGHT=${var.height} PREFIX=${var.prefix} ./deploy_app.sh",
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = "${tls_private_key.hashicat.private_key_pem}"
      host        = "${aws_eip.hashicat.public_ip}"
    }
  }
}
