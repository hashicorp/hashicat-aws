terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Escala24x7Ops"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
