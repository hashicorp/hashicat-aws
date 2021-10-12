terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "israeldahan"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
