terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MonesTestOrg"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
