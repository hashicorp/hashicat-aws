terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sheryl-org"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
