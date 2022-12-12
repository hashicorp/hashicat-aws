terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ncdfc"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
