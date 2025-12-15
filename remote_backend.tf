terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tqraitem-org-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
