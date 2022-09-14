terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "test-org-123455"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
