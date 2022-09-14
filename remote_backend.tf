terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "workshop-peter"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
