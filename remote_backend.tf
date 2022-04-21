terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "alix-test"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
