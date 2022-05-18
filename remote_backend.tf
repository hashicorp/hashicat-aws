terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "stuart-terraform"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
