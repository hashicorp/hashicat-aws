terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "test-javier"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
