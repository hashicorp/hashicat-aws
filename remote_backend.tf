terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "parrew-aws-lab"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
