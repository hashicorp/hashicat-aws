terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "DANFEDICK-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}