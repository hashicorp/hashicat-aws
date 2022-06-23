terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "carlos-herrera-95"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
