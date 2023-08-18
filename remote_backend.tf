terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vinay-kumar-k2"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
