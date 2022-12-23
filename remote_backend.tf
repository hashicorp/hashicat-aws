terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hackonion"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
