terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "reino-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
