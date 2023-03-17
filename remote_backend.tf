terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "damianszuberski"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
