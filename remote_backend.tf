terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "fanniemae-mars-apm"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
