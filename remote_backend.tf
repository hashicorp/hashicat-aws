terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Petronas-workshop"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
