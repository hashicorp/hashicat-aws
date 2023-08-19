terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dev-pancakes"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
