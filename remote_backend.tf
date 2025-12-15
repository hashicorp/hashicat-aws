terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "aajolly-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
