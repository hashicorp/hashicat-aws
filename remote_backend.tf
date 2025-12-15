terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "likz_dev"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
