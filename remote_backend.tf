terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "alejo-pruebas"
    workspaces {
      name = "hashicat-aws"
    }
  }
}