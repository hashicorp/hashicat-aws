terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "agarrote-workshop-test"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
