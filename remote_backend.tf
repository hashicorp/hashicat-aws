terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jasonmcgee"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
