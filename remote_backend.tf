terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dmnguy"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
