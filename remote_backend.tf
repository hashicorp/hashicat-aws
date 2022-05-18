terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hashcat-aws-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
