terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ggen-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
