terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yktakaha4-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
