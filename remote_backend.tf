terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bkumar-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
