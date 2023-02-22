terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "AashnaJainTestOrganisation"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
