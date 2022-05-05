terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "learn-tfe-sbx"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
