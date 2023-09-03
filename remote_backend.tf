terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "my-training-20230902"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
