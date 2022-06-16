terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ryoqn-traning"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
