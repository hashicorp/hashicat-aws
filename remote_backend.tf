terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aws-dev-hMonday-demo"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
