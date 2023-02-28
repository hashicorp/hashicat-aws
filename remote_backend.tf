terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "quoonel-tf-tutorial"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
