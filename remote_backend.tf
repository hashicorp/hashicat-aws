terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "DynamicTech"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
