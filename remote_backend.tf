terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ira-tf-2022-demo"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
