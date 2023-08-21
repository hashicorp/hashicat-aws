terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dikshika-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
