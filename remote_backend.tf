terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "AccrediationLab"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
