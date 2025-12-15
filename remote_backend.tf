terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "shaniru-aws-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
