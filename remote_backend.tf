terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "training-J7KC"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
