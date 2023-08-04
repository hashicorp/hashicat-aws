terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "naga_training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
