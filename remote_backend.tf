terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jmueller-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
