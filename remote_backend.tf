terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MARCOSPACIFICO-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
