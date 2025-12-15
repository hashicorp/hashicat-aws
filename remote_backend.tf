terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "svvskoundinya1996"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
