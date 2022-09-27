terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aswanth-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
