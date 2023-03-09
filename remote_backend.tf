terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Doghwan-lab"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
