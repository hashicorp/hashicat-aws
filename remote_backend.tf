terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "testjoo"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
