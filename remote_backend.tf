terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "moizshar"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
