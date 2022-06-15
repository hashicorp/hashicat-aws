terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sakamoto-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
