terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashicorp-mayuri"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
