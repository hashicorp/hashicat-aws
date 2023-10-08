terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "msvbhat-tfc"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
