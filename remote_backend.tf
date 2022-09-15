terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Grannis"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
