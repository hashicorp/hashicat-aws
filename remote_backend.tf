terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "DhughesOrg"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
