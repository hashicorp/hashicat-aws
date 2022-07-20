terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "rodrigogoncalvestorres"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
