terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "gshve-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
