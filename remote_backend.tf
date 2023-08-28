terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "avseelam-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
