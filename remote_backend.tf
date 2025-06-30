terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Trial_HS001"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
