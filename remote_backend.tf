terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kb0-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
