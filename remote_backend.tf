terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "thompian"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
