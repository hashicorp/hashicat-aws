terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "debo-amazon"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
