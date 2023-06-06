terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "george-withers-org-workshop"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
