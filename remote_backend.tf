terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "wolftales-org2"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
