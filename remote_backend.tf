terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rapg-isv-program-2"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
