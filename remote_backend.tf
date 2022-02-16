terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "HonMarkHunt-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
