terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "CHIP_test_organization"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
