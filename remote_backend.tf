terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rajvrajkumar"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
