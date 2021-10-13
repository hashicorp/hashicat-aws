terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashi-lab"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
