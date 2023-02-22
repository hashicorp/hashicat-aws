terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nimble-spaghetti"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
