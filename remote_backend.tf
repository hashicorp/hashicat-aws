terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "grenier"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
