terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jloinaz-isv-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
