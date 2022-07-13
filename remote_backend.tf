terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Versent-CTO"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
