terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "cl-asia-nsa"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
