terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ashwin-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
