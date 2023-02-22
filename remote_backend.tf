terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Dereks-DevOps"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
