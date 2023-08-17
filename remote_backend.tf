terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "matt_kurio_2"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
