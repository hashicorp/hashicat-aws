terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "malik-ayub-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
