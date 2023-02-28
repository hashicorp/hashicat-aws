terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "feb28-aws-terraform-cloud"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
