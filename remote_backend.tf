terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MytestOrgSagar"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
