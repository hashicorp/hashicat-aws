terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hbl-dipesh-lab-test"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
