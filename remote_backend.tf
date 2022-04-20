terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ampf-mperra1"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
