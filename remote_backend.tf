terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "tomato-warning"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
