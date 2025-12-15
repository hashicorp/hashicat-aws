terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nawazkhan-training2"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
