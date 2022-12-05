terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "kamranabid"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
