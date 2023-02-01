terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "seul-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
