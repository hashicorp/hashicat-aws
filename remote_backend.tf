terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mori-ysnb-traning"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
