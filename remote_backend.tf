terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ericreeves"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
