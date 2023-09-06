terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vinmand-isv"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
