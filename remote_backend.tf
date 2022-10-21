terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "bay-ball"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
