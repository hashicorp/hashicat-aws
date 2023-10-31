packer {
  required_plugins {
    amazon = {
      version = ">= 1.0.1"
      source  = "github.com/hashicorp/amazon"
    }
  }
}
variable "placeholder" {
  default     = "placekitten.com"
  description = "Image-as-a-service URL. Some other fun ones to try are fillmurray.com, placecage.com, placebeard.it, loremflickr.com, baconmockup.com, placeimg.com, placebear.com, placeskull.com, stevensegallery.com, placedog.net"
}

variable "admin_username" {
  description = "Administrator user name for mysql"
  default     = "hashicorp"
}

variable "height" {
  default     = "400"
  description = "Image height in pixels."
}

variable "width" {
  default     = "600"
  description = "Image width in pixels."
}

variable "prefix" {
  description = "This prefix will be included in the name of most resources."
  default     = "hashicat"
}

variable "version" {
  type    = string
  default = "1.0.0"
}

data "amazon-ami" "ubuntu-jammy-east" {
  region = "us-east-1"
  filters = {
    name = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
  }
  most_recent = true
  owners      = ["099720109477"]
}

source "amazon-ebs" "hashicat-aws-east" {
  region         = "us-east-1"
  source_ami     = data.amazon-ami.ubuntu-jammy-east.id
  instance_type  = "t2.small"
  ssh_username   = "ubuntu"
  temporary_key_pair_type = "ed25519"
  ssh_agent_auth = false
  ami_name       = "packer_AWS_{{timestamp}}_v${var.version}"
}

build {
  hcp_packer_registry {
    bucket_name = "hashicat-aws"
    description = <<EOT
Some nice description about the image being published to HCP Packer Registry.
    EOT
    bucket_labels = {
      "owner"          = "platform-team"
      "os"             = "Ubuntu",
      "ubuntu-version" = "jammy 22.04",

    }

    build_labels = {
      "build-time"   = timestamp()
      "build-source" = basename(path.cwd)
    }
  }
  sources = [
    "source.amazon-ebs.hashicat-aws-east"
  ]

  provisioner "file" {
  source = "../files/"
  destination = "/home/ubuntu/"
}

  provisioner "shell" {
    inline = [ 
      "echo foo",
      "sudo apt -y update",
      "sleep 15",
      "sudo apt -y update",
      "sudo apt -y install apache2",
      "sudo systemctl start apache2",
      "sudo chown -R ubuntu:ubuntu /var/www/html",
      "chmod +x /home/ubuntu/deploy_app.sh",
      "PLACEHOLDER=${var.placeholder} WIDTH=${var.width} HEIGHT=${var.height} PREFIX=${var.prefix} ./deploy_app.sh"]
  }

}

