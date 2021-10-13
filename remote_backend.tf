terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "josna-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
