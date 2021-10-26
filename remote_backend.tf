terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "arje-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
