terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "shoji-kai-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
