terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jessie-dltksesh1"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
