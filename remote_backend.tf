terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tak-naruoka-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
