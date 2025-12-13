terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "MalatiPersonalOrg"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
