terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "jeffprice-training"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
