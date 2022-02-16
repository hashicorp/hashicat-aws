terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "nimai-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
