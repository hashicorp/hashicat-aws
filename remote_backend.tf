terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "demo-hashicorp-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
