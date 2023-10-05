terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "pokeyjo-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
