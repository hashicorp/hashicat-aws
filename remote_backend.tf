terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "WFtraining"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
