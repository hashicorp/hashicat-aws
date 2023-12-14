terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tf-chip-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
