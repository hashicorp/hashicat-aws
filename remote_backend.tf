terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "seanybwalker"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
