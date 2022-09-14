terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "futureTENSE"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
