terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mswony"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
