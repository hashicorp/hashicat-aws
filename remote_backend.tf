terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kittyiv"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
