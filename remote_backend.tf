terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ACME-jayy2kok"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
