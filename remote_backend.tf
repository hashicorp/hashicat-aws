terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "BandhanPatel-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
