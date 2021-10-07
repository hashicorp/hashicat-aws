terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "cnixon"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
