terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yasuhiro-training111111111111111111111"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
