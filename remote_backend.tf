terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dv-LEARNING"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
