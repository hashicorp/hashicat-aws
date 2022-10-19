terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "example-org-dd2853"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
