terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "mohandau-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
