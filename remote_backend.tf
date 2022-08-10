terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kellersyf"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
