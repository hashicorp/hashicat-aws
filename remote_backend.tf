terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "iPrice"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
