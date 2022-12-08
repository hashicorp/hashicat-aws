terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Gashicorp"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
