terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "NishaP-AWS"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
