terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jooimk"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
