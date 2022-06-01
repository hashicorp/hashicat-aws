terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "samuelleezy-hashicorp-demo"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
