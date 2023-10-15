terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "vinglt-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
