terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "l2D-demo"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
