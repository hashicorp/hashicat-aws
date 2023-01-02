terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "what-is-this"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
