terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ghm-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
