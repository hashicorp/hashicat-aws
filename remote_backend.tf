terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jthompson-tfc-test"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
