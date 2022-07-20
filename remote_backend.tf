terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kychoolus"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
