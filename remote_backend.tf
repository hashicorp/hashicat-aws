terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "neelams-tf-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
