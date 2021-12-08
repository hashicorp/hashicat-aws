terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "KatsumiE-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
