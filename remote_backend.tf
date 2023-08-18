terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sushanta-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
