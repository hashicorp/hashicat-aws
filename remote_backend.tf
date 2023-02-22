terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ab_ausport_training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
