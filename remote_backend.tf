terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "DAVE-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
