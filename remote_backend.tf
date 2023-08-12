terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Certif-HashiCorp-2023"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
