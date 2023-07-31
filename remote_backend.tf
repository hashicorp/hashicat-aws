terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "example-org-340f94"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
