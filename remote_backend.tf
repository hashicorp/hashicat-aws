terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "cdotyone"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
