terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jasonend_amazon"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
