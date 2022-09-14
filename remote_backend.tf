terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "JohnWoffindin"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
