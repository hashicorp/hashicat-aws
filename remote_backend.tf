terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hsakuray2"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
