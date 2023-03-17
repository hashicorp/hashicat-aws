terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vinicius"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
