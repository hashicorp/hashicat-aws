terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ACME-peter"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
