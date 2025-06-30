terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "munsidd-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
