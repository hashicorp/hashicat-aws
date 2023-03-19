terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "test1233434"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
