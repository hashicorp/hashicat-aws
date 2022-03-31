terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "AeronFuertes-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
