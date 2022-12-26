terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "insideinfo-test1"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
