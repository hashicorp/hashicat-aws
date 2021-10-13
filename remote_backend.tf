terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "testing-workshop"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
