terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "alaahabd-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
