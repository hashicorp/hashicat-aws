terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ACME-TF-WORKSHOP"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
