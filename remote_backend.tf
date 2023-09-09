terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "praveendoifode1989-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
