terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "test-shruti"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
