terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "CloudnEm"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
