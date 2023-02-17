terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "alwayshuizhen"
    workspaces {
      name = "hashicat-aws"
    }
  }
}
