terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashicat-aws-sky"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
