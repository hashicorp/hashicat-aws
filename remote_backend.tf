terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "raju-org-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
