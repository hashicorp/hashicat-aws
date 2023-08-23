terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "prabhuAWS"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
