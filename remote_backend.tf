terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "YasuoTanaka-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
