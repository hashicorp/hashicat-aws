terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jslim-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
