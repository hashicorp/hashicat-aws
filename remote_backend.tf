terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "pearson-pif-terraform-poc"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
