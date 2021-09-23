terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "egaskell-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
