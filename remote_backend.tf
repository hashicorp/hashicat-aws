terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tf-demo-amzn"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
