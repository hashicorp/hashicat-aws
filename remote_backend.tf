terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "etchudez-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
