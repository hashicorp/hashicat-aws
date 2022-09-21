terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "yahya-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
