terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sundarkumar"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
