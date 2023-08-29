terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "igordust-org-aws"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
