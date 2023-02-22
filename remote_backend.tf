terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sample-mt"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
