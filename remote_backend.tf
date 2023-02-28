terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "WascarOrganization"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
