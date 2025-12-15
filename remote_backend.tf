terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aws-ac"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
