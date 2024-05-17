terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashicat-test-test"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
