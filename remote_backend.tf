terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "test-1234567890"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
