terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ben-fnma"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
