terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yasuhiro-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
