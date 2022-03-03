terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "telstra-yogita"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
