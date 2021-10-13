terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MyOrg-1959"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
