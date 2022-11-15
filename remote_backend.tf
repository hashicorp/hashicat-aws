terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "octoocto"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
