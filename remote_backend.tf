terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vincent-test"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
