terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "P14G-demo"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
