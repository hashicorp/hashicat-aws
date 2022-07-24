terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "TalHibner"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
